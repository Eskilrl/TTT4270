#include <stdio.h>
#include <iostream>

//Libraries needed for UART
#include <fcntl.h>
#include <termios.h>
#include <unistd.h>
#include <cstring>
#include <bits/stdc++.h>
#include <fcntl.h>
#include <termios.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <mqtt/async_client.h>
//#include <csignal>
//#include <sys/time.h>


#include "SPS.h"
#include "gui.h"

#include <wiringPi.h>


//Setup MQTT properties
const std::string SERVER_ADDRESS("tcp://localhost:1883");
const std::string CLIENT_ID("raspi-subscriber");
const std::string TOPIC("SPS/TimeVector");
    

//decleare positions of sensors in cm
std::vector<double> Avector = {19, 0, -19, 0}; //Sensor X - coordinates
std::vector<double> Bvector = {0, 19, 0, -19};    //Sensor Y - coordinates
std::vector<double> Cvector = {0, 0, 0, 0};//Sensor Z - coordinates
int lenghtA = 4; //Number of sensors
double c = 343*100; //Speed of sound in medium used (Air or water)
bool pingPin = false; //pin used for making a ping
bool dataRecieved = false;
bool dataRecievedOnPrevSend = true;
bool errorDetected = false;
bool timeout = false;
bool restartInit = false;

double PingedTime = 0;
long long lastPingTime = 0;
long long lastUpdateTime;
long long restartStarttime;

//Define FPGA clock speed 
#define FPGA_CLK 100000000

long currentTime = glfwGetTime();
long deltaTime = 0;

//Initiate Data containers
programStatus prgmStatus;
SystemStatus GUIStatus;


Eigen::Vector4d Guess = {0,0,-15,0}; //create initial guess

//Init average vector to guess vector

const int resultLength = 10;
static int resultIndex = 0;
Eigen::Vector4d resultVec[resultLength];
Eigen::Vector4d averageVec;

std::vector<double> timeVec = {0.1,0.1,0.1,0.1};

GuiContainer GuiC;
SPS sps(Avector,Bvector,Cvector,Guess,lenghtA,c);

    class callback : public virtual mqtt::callback {
        public:
            void message_arrived(mqtt::const_message_ptr msg) override {
                const std::string& payload = msg->get_payload_str();
                const uint8_t* rawData = reinterpret_cast<const uint8_t*>(payload.data());
                size_t len = payload.size();
        
                std::cout << "Raw bytes received (" << len << " bytes): ";
                for (size_t i = 0; i < len; ++i) {
                    printf("0x%02X ", rawData[i]);
                }
                std::cout << std::endl;
        
                // Check for correct payload size (4 bytes + 1 checksum) * 4 = 20
                if (len != 20) {
                    std::cerr << "Error: Invalid payload length." << std::endl;
                    return;
                }
                std::vector<double> tempVec = {0,0,0,0};
                int tempIndex = 0;
                for (size_t i = 0; i < len; i += 5) {
                    // Check checksum
                    if (rawData[i + 4] != 0xFF) {
                        std::cout << "Checksum mismatch at index " << i << std::endl;
                        //std::lock_guard<std::mutex> lock(*guiMutex);
                        //guiStatus->comstat = CheckSumError;
                        errorDetected = true;
                        GUIStatus.comstat.store(CheckSumError);
                        return;
                    }
        
                    // Combine 4 bytes into a uint32_t (big-endian)
                    uint32_t value = (rawData[i] << 24) | (rawData[i + 1] << 16) |
                                     (rawData[i + 2] << 8) | (rawData[i + 3]);
                    double tempTime = (static_cast<double>(value)/FPGA_CLK);
                    tempVec.at(tempIndex) = tempTime;
                    std::cout << "time [S]: " << tempTime << std::endl;
                    tempIndex ++;

                }
                if(tempVec.size() != 4){
                    errorDetected = true;
                    std::cout << "Wrong tempVec size: " << sizeof(tempVec) << std::endl;
                    return;
                }

                //std::lock_guard<std::mutex> lock(*guiMutex);
                timeVec = tempVec;
                //guiStatus->comstat = MsgRecievedOK;
                GUIStatus.comstat.store(MsgRecievedOK);
                errorDetected = false;
                updateCount++;
                dataRecieved = true;
                lastUpdateTime = getCurrentTimeMicros();
                //std::cout << "MQTT recieved" << std::endl;
            }
        }; 

int main() {

    //Setup RPI GPIO

    // - - - - - - - -
    for (int i = 0; i < resultLength; ++i) {
        resultVec[i] = Guess;
    }

    restartStarttime = getCurrentTimeMicros();  
    lastUpdateTime = getCurrentTimeMicros();

    GuiC.var_x = 0;
    GuiC.var_y = 0;
    GuiC.var_z = 0;
    GuiC.var_t = 0;
   
    GUIStatus.comstat = NoData;
    if(GetIPAddress() != "Not Found"){
    prgmStatus = Online;
}   else {
    prgmStatus = Offline;
}

    wiringPiSetup();			// Setup the library
    pinMode(29, OUTPUT);		// Configure GPIO0 as an output
    pinMode(28, OUTPUT);
    pinMode(1, INPUT);		// Configure GPIO1 as an input

    
    //Setup MQTT Client
    mqtt::async_client client(SERVER_ADDRESS, CLIENT_ID);
    callback cb;
    client.set_callback(cb);
    mqtt::connect_options connOpts;
    client.connect(connOpts)->wait();
    client.subscribe(TOPIC, 1)->wait();
    std::cout << "Listening for messages on topic '" << TOPIC << "'..." << std::endl;
    sleep(2);
    // - - - - - - - - 


    //Test SPS system
    sps.makePing(timeVec);
    Eigen::Vector4d posittion;
    posittion = sps.getData();

    std::cout << "estimated position with ping" << std::endl;
    std::cout << "X: " << posittion(0) << std::endl;
    std::cout << "Y: " << posittion(1) << std::endl;
    std::cout << "Z: " << posittion(2) << std::endl;
    std::cout << "t: " << posittion(3) << std::endl;
    

    //Initiate GUI
    if (!glfwInit()) return -1;

    // Set the OpenGL version and context
    const char* glsl_version = "#version 130"; // Choose a GLSL version that matches your OpenGL version

    // Create a GLFW window
    GLFWwindow* window = glfwCreateWindow(GuiC.getWidth()*37, GuiC.getHeight()*22, "Bioscope Positioning System", NULL, NULL);
    if (!window) {
        glfwTerminate();
        return -1;
    }
    
    glfwMakeContextCurrent(window);

    // Initialize OpenGL loader (e.g. glad or glew) if needed here

    // Initialize ImGui and create the context
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();  // Create the ImGui context
    ImGuiIO& io = ImGui::GetIO();  // Get the IO object
    (void)io;

    // Set up ImGui style
    ImGui::StyleColorsDark();

    // Initialize ImGui with the specified GLSL version
    ImGui_ImplOpenGL3_Init(glsl_version);  // This initializes ImGui with the appropriate GLSL version
    ImGui_ImplGlfw_InitForOpenGL(window, true);  // Initialize the GLFW backend for ImGui

    //Program loop -- -- -- -- -- -- 

    while (!glfwWindowShouldClose(window)) {
        currentTime = glfwGetTime();
        deltaTime = currentTime - lastTime;

        //Update position functions - - - - - - - 
        if(GuiC.autoPing){
            //Auto update

            //Make a ping after 100ms from the last one
            if((getCurrentTimeMicros() >= lastPingTime +1000000/GuiC.UpdateRate) && (pingPin == false) && !restartInit){
                pingPin = true;
                digitalWrite(29,pingPin);
                digitalWrite(28,0);
                PingedTime = getCurrentTimeMicros();
                lastPingTime = getCurrentTimeMicros();
                std::cout << "pinged again" << std::endl;
                dataRecievedOnPrevSend = false;
            }
            //std::lock_guard<std::mutex> lock(guiStatusMutex);
            //GUIStatus.comstat = Sensor_error;
            if(getCurrentTimeMicros()  >= lastUpdateTime + 10000000){
                std::cout << "Set timeout true" << std::endl;
                lastUpdateTime = getCurrentTimeMicros();
                timeout = true;
            }
            }
            if(dataRecieved){
                dataRecievedOnPrevSend = true;
                /*
                std::cout << "Updating vector" << std::endl;
                std::cout <<"input vector: " << std::endl;
                for(int i = 0; i<4; i++){
                    std::cout << "Vector comp: " << timeVec.at(i) << std::endl;
                }
                    */
                dataRecieved = false;
                //std::cout << "estimating position" << std::endl;
                if(sps.makePing(timeVec)){
                    resultVec[resultIndex] = sps.getData();
                    resultIndex = (resultIndex + 1) % resultLength;

                    //Calculate average position
                    double x_pos{}, y_pos{}, z_pos{}, t_delay{};
                    for(int i = 0; i < resultLength; i++){
                        x_pos += resultVec[i](0);
                        y_pos += resultVec[i](1);
                        z_pos += resultVec[i](2);
                        t_delay += resultVec[i](3);
                    }
                    averageVec = {x_pos/resultLength, y_pos/resultLength, z_pos/resultLength, t_delay/resultLength};


                    //Calculate variance
                    double tempvar_x{}, tempvar_y{}, tempvar_z{}, tempvar_t{};
                    for(int i = 0; i < resultLength; i ++){
                        tempvar_x += (resultVec[i](0) - x_pos/resultLength) * (resultVec[i](0) - x_pos/resultLength);
                        tempvar_y += (resultVec[i](1) - y_pos/resultLength) * (resultVec[i](1) - y_pos/resultLength);
                        tempvar_z += (resultVec[i](2) - z_pos/resultLength) * (resultVec[i](2) - z_pos/resultLength);
                        tempvar_t += (resultVec[i](3) - t_delay/resultLength) * (resultVec[i](3) - t_delay/resultLength);
                    }
                    GuiC.var_x = tempvar_x/(resultLength-1);
                    GuiC.var_y = tempvar_y/(resultLength-1);
                    GuiC.var_z = tempvar_z/(resultLength-1);
                    GuiC.var_t = tempvar_t/(resultLength-1);
            
                    GuiC.updatePositionData(averageVec);    
                    //std::cout << "Position found!" << std::endl;
                }
                    
            }
        
            if((errorDetected && !(getCurrentTimeMicros() >= lastUpdateTime + 1000000)) || timeout){
                digitalWrite(28,1);
                if(timeout){
                    timeout = false;
                    std::cout << "Timeout set false" << std::endl;
                    prgmStatus = ErrorDetected_TimedOut;
                } else{
                    prgmStatus = ErrorDetected_FrameError;
                }
                restartInit = true;
                restartStarttime = getCurrentTimeMicros();
                std::cout << "timeout: " << timeout << std::endl;
                std::cout << "Error detected: " << errorDetected << std::endl;
                std::cout << "Time truth " << (getCurrentTimeMicros() >= lastUpdateTime + 1000000) << std::endl;
                std::cout << "Last update time: " << lastUpdateTime << std::endl;
                std::cout << "Set error" << std::endl;
            }

            if((getCurrentTimeMicros() >= restartStarttime + 8000000)){
                if(restartInit){
                digitalWrite(28,0);
                restartInit = false;
                prgmStatus = Online;
                }
            }

        


        if(GuiC.pingOnce){
            GuiC.pingOnce = false;
            pingPin = !pingPin;
            digitalWrite(29,pingPin);
            PingedTime = getCurrentTimeMicros();
        }

        //Turn off ping pin after 5 ms
        if(pingPin){
            if(getCurrentTimeMicros() >= PingedTime +5000){
                pingPin = false;
                digitalWrite(29,pingPin);
            }
        }

        if(GuiC.SysReset){

            //Turn off all functions
            GuiC.pingOnce = false;
            GuiC.SysReset = false;
            GuiC.autoPing = false;

            //Reset position
            averageVec = {0,0,0,0};
            GuiC.updatePositionData(averageVec);  
            for (int i = 0; i < resultLength; ++i) {
                resultVec[i] = Eigen::Vector4d(0,0,0,0);
            }
            averageVec = Eigen::Vector4d(0,0,0,0);
            digitalWrite(28,1);
            prgmStatus = Reset_Triggered;
            restartInit = true;
            restartStarttime = getCurrentTimeMicros() -7000000 ;
        }

        GuiC.updateMetrics(sps.getCalcTime(), timeVec, GUIStatus, prgmStatus,lastUpdateTime, restartStarttime);  
        // - - - - - - - - -    


        //Update GUI functuins
        glfwPollEvents();
        glClear(GL_COLOR_BUFFER_BIT);  // Clear the window

        // Render Gui
        RenderUI(GuiC);
        glfwSwapBuffers(window);  // Swap buffers
        if (deltaTime >= 1.0) {
        ups = updateCount / deltaTime;
        updateCount = 0;
        lastTime = currentTime;
    }
    }
    

    // Cleanup
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();  // Don't forget to destroy the ImGui context!
    glfwDestroyWindow(window);
    glfwTerminate();
    close(serial_port);
    client.disconnect()->wait();
    
    return 0;
}