#include <stdio.h>
#include <iostream>
//#include <csignal>
//#include <sys/time.h>


#include "SPS.h"
#include "gui.h"

#include <wiringPi.h>
    

//decleare positions of sensors
std::vector<double> Avector = {15600,18760, 17610, 19170}; //Sensor X - coordinates
std::vector<double> Bvector = {7540, 2750, 14630, 610};    //Sensor Y - coordinates
std::vector<double> Cvector = {20140, 18610, 13480, 18390};//Sensor Z - coordinates
int lenghtA = 4; //Number of sensors
double c = 299792.458; //Speed of sound in medium used (Air or water)
bool ledON = false;

Eigen::Vector4d Guess = {0,0,6370,0}; //create initial guess

GuiContainer GuiC;
SPS sps(Avector,Bvector,Cvector,Guess,lenghtA,c);

int main() {

    //Setup RPI GPIO

    // - - - - - - - -

    
    wiringPiSetup();			// Setup the library
    pinMode(0, OUTPUT);		// Configure GPIO0 as an output
    pinMode(1, INPUT);		// Configure GPIO1 as an input




    // - - - - - - - - 


    //Test SPS system
    sps.makePing();
    Eigen::Vector4d posittion;
    posittion = sps.getData();

    std::cout << "estimated position with ping" << std::endl;
    std::cout << "X: " << posittion(0) << std::endl;
    std::cout << "Y: " << posittion(1) << std::endl;
    std::cout << "Z: " << posittion(2) << std::endl;
    std::cout << "t: " << posittion(3) << std::endl;
    //GuiC.updatePositionData(sps.getData()); //Fix this function
    
    
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
        double currentTime = glfwGetTime();
        double deltaTime = currentTime - lastTime;

        //Update position functions - - - - - - - 
        if(GuiC.autoPing){
            if(sps.makePing()){
                updateCount++;
            }
        }
        if(GuiC.pingOnce){
            GuiC.pingOnce = false;
            ledON = !ledON;
            digitalWrite(0,ledON);

        }
        GuiC.updatePositionData(sps.getData());

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
    
    return 0;
}


/*

void setupcallback(){
    struct sigaction sa;
    struct itimerval timer;

    sa.sa_handler = callbackFunction;
    sa.sa_flags = 0;
    sigemptyset(&sa.sa_mask);
    sigaction(SIGALRM, &sa, NULL);

    timer.it_value.tv_sec = 0;
    timer.it_value.tv_usec = 100000;  // First trigger after 100ms
    timer.it_interval.tv_sec = 0;
    timer.it_interval.tv_usec = 100000; // Repeat every 100ms

    setitimer(ITIMER_REAL, &timer, NULL);
}

*/