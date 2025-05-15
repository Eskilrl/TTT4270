#include "gui.h"


//Define variables - - - - - - - - - - - - - - - - 

float my_color[4] = {0.45f, 0.55f, 0.60f, 1.00f};
bool my_tool_active = true;
double lastTime = glfwGetTime();
int updateCount = 0;
double ups = 0;

const char* statusStr[] = {
    "NoData",
    "MsgRecievedOK",
    "NumByteError",
    "CheckSumError",
    "EOF_Error"
};

extern const char* systemStr[] = {
    "Offline",
    "Online",
    "ErrorDetected: Timed Out",
    "ErrorDetected: Frame Error",
    "Reset Triggered!"
};



static float OceantempHistory[100] = {0};  // Store the last 100 values
static int OceantempIndex = 0;


// GuiContainer class functions - - - - - - - - - - - - - - - - 

int GuiContainer::getHeight(){
    return InnerWindowHeightUnit;
}

int GuiContainer::getWidth(){
    return InnerWindowWidthUnit;
}

std::vector<double> GuiContainer::getPos(){
    return BioscopePosition;
}

float GuiContainer::getBaroDepth(){
    return BarometerDepth;
}

float GuiContainer::getTemperature(){
    return Temperature;
}

std::vector <double> GuiContainer::returnTimeVector(){
    return timeVector;
}

Eigen::Vector4d GuiContainer::returnPositionVector(){
    return PositionVector;
}

bool GuiContainer::updateMetrics(int time, std::vector<double> &tvec, SystemStatus &stmSt, programStatus &pgms,
    long long lastUpdTime, long long restartstrTime){
    calcTime = time;
    timeVector = tvec;
    guiProgramStatus = pgms;
    systemSts.comstat.store(stmSt.comstat.load());
    internalLastUpdateTime = lastUpdTime;
    internalRestartTime = restartstrTime;
    //systemSts = stmSt;
    return true;
}

int GuiContainer::getMetrics(){
    return calcTime;
}



bool GuiContainer::updatePositionData(Eigen::Vector4d positionVector){
    for(int i = 0; i < BioscopePosition.size(); i++){
        BioscopePosition.at(i) = positionVector(i);
    }
    return true;
}


//Define functions - - - - - - - - - - - - - - - - 


void InitImGui(GLFWwindow* window) {
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO();
    io.FontGlobalScale = 3.0f;  // Scale all fonts and UI by 1.5x
    (void)io;

    ImGui::StyleColorsDark();

    ImGui_ImplGlfw_InitForOpenGL(window, true);
    ImGui_ImplOpenGL3_Init("#version 130");
}

void CleanupImGui() {
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();
}

void RenderUI(GuiContainer &GuiC) {
    ImGui_ImplOpenGL3_NewFrame();
    ImGui_ImplGlfw_NewFrame();
    ImGui::NewFrame();

    //Call sub window modules
    CreateTrueDepthUI(GuiC);
    CreatePosition2D(GuiC);
    CreateErrors(GuiC);
    CreateControllParameters(GuiC);
    CreateGeneralMetrics(GuiC);

    //Render
    ImGui::Render();
    ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
}


void CreateExampleUI(){
    ImGui::Begin("My First Tool", &my_tool_active, ImGuiWindowFlags_MenuBar);
    if (ImGui::BeginMenuBar())
    {
        if (ImGui::BeginMenu("File"))
        {
            if (ImGui::MenuItem("Open..", "Ctrl+O")) { /* Do stuff */ }
            if (ImGui::MenuItem("Save", "Ctrl+S"))   { /* Do stuff */ }
            if (ImGui::MenuItem("Close", "Ctrl+W"))  { my_tool_active = false; }
            ImGui::EndMenu();
        }
        ImGui::EndMenuBar();
    }

    // Edit a color stored as 4 floats
    ImGui::ColorEdit4("Color", my_color);

    // Generate samples and plot them
    float samples[100];
    for (int n = 0; n < 100; n++)
        samples[n] = sinf(n * 0.2f + ImGui::GetTime() * 1.5f);
    ImGui::PlotLines("Samples", samples, 100);

    // Display contents in a scrolling region
    ImGui::TextColored(ImVec4(1,1,0,1), "Important Stuff");
    ImGui::BeginChild("Scrolling");
    for (int n = 0; n < 50; n++)
        ImGui::Text("%04d: Some text", n);
    ImGui::EndChild();
    ImGui::End();
}


void CreateTrueDepthUI(GuiContainer &GC){
    
    ImGui::SetNextWindowPos(ImVec2(GC.getWidth() *17, GC.getHeight()*1)); 
    ImGui::SetNextWindowSize(ImVec2(GC.getWidth()*6, GC.getHeight()*20));
    ImGui::Begin("Baro Depth");
    ImDrawList* draw_list = ImGui::GetWindowDrawList();

    // Define start and end points
    ImVec2 p1 = ImVec2(GC.getWidth()*20, GC.getHeight()*2);
    ImVec2 p2 = ImVec2(GC.getWidth()*20, GC.getHeight()*19);
    ImVec2 p3 = ImVec2(GC.getWidth()*18, GC.getHeight()*2);
    ImVec2 p4 = ImVec2(GC.getWidth()*22, GC.getHeight()*2);
    // Define color and thickness
    ImU32 color = IM_COL32(255, 255, 255, 255); // White color
    float thickness = 3.0f;

    // Draw the line
    draw_list->AddLine(p1, p2, color, thickness);

    color = IM_COL32(255, 255, 255, 255); // White color

    // Draw the line
    draw_list->AddLine(p3, p4, color, thickness);

    color = IM_COL32(255, 0, 0, 255); // Red color
    float height = GC.getHeight()*13;
    ImVec2 circleCenter = ImVec2(GC.getWidth()*20,  (-(GC.getPos().at(2))/tankDepth/2)*height+GC.getWidth()*2);
    float circleRaduis = GC.getHeight()/4;
    draw_list->AddCircle(circleCenter,circleRaduis,color,30,3.0f);

    ImVec2 TextPoint = ImVec2(circleCenter.x+20,(-(GC.getPos().at(2))/tankDepth/2)*height+GC.getWidth()*2);
    ImGui::SetCursorPos(TextPoint);
    ImGui::Text("Z: %d", (int) GC.getBaroDepth());

    ImGui::End();
}

void CreatePosition2D(GuiContainer &GC){
    ImGui::SetNextWindowPos(ImVec2(GC.getWidth()*1, GC.getHeight()*1)); 
    ImGui::SetNextWindowSize(ImVec2(GC.getWidth()*15, GC.getHeight()*20));
    ImGui::Begin("Position in 2D");

    ImDrawList* draw_list = ImGui::GetWindowDrawList();
    
    float width = GC.getWidth()*13;
    float height = GC.getHeight()*13;
    ImU32 color = IM_COL32(100, 100, 255, 255); // Blueish net
    float thickness = 3.0f;

    //Net position vectors
    ImVec2 top_left = ImVec2(GC.getWidth()*2, GC.getHeight()*2);
    ImVec2 top_right = ImVec2(top_left.x + width, top_left.y);
    ImVec2 top_control = ImVec2((top_left.x + top_right.x) / 2, top_left.y + height);
    
    //Draw the net
    draw_list->AddBezierCubic(top_left, top_control, top_control, top_right, color, thickness);
    draw_list->AddLine(top_left, top_right, color, thickness);
  
    //Draw drone
    color = IM_COL32(255, 0, 0, 255); // Red color
    ImVec2 DronePos = ImVec2(GC.getPos().at(0), -(GC.getPos().at(2)));

    DronePos.x = ((DronePos.x+tankWidt/2)/tankWidt)*width+GC.getWidth()*2;
    DronePos.y = ((DronePos.y)/tankDepth/2)*height+GC.getWidth()*2;
    

    float circleRaduis = GC.getHeight()/4;
    draw_list->AddCircle(DronePos,circleRaduis,color,30,3.0f);
    ImVec2 TextPoint = ImVec2(DronePos.x,DronePos.y/6);
    ImGui::SetCursorPos(TextPoint);
    ImGui::Text("Debth: %d", (int) GC.getPos().at(2));

    //Draw lines to drone vector
    color = IM_COL32(255, 100, 0, 255); // Red color
    draw_list->AddLine(top_right, DronePos, color, thickness);
    draw_list->AddLine(top_left, DronePos, color, thickness);

    color = IM_COL32(255, 255, 255, 255); // White color
    draw_list->AddLine(ImVec2(DronePos.x, top_left.y), DronePos, color, thickness);
    ImGui::End();

}

void CreateErrors(GuiContainer &GC){
    ImGui::SetNextWindowPos(ImVec2(GC.getWidth()*24, GC.getHeight()*1)); 
    ImGui::SetNextWindowSize(ImVec2(GC.getWidth()*12, GC.getHeight()*5));
    ImGui::Begin("Bioscope metrics");
    ImGui::Text("Current position:");
    std::vector<double> tempPosVec = GC.getPos();
    float x = (float) tempPosVec.at(0);
    float y = (float) tempPosVec.at(1);
    float z = (float) tempPosVec.at(2);
    ImGui::Text("X: %.6f",x);
    ImGui::Text("Y: %.6f",y);
    ImGui::Text("Z: %.6f",z);
    //ImGui::Text("delta t: %d",GC.getPos().at(3));

    //calculating estimation time
    ImGui::Text("HitRate: %.2f%%", hitrate*100);
    ImGui::Text("Std err: x: %.2fcm y: %.2fcm z: %.2fcm t: %.2fs",
        std::sqrt(GC.var_x),
        std::sqrt(GC.var_y),
        std::sqrt(GC.var_z),
        std::sqrt(GC.var_t)
    );


    ImGui::Text("Calculation time[us] : %d", GC.getMetrics());
    estimationHistory[estimationIndex] = GC.getMetrics();
    estimationIndex = (estimationIndex + 1) % 100;
    ImGui::PlotLines("Calculation time [20-100]", estimationHistory, 100, 0, nullptr, 20.0f, 100.0f, ImVec2(0, GC.getHeight()/2));
    float calculationAverage = 0;
    for(int i = 0; i < 100; i++){
        calculationAverage += estimationHistory[i];
    }
    calculationAverage = calculationAverage/100;

    ImGui::Text("Calculation average[us] : %.2f", calculationAverage);


    ImGui::Text("Sonar to barometer deviation: %d", 0);
    
    std::vector<double> tempTvec = GC.returnTimeVector();

    ImGui::Text("time data: t1: %.6f t2: %.6f t3: %.6f t4: %.6f",
    tempTvec.at(0),
    tempTvec.at(1),
    tempTvec.at(2),
    tempTvec.at(3));
    
    ImGui::Text("MQTT status: %s",
         statusStr[GC.systemSts.comstat]);

    ImGui::End();

}

void CreateControllParameters(GuiContainer &GC){
    ImGui::SetNextWindowPos(ImVec2(GC.getWidth()*24, GC.getHeight()*7)); 
    ImGui::SetNextWindowSize(ImVec2(GC.getWidth()*12, GC.getHeight()*6));
    ImGui::Begin("Controll parameters");

    //ImGui::SliderFloat("Sonar/IMU bias %d", &GC.f, 0.0f, 1.0f);
    if(ImGui::Button("Reset", ImVec2(GC.getWidth()*5,GC.getHeight()))){
        GC.SysReset = true;
    }
    //ImGui::InputText("Set diameter [m]: ", GC.DiameterBuf, IM_ARRAYSIZE(GC.DiameterBuf));
    if(ImGui::Button(("Auto ping: " + std::string(GC.autoPing? "true" : "false")).c_str(), ImVec2(GC.getWidth()*5,GC.getHeight()))){
        GC.autoPing = !GC.autoPing;
    }
    if(ImGui::Button("Manual ping",ImVec2(GC.getWidth()*5,GC.getHeight()))){
        GC.pingOnce = true;
    }

    ImGui::Text("Set update Rate");
    if (ImGui::Button("1/s")) {
        GC.UpdateRate  = 1;  // Set variable to 0 when the first button is clicked
    }
    ImGui::SameLine();  // Keep the next button on the same line

    if (ImGui::Button("10/s")) {
        GC.UpdateRate  = 10;  // Set variable to 1 when the second button is clicked
    }
    ImGui::SameLine();  // Keep the next button on the same line

    if (ImGui::Button("100/s")) {
        GC.UpdateRate  = 100;  // Set variable to 2 when the third button is clicked
    }

    // You can display the current state
    ImGui::Text("Current update Rate: %d/s", GC.UpdateRate );


    ImGui::End();

}

void CreateGeneralMetrics(GuiContainer &GC){
    ImGui::SetNextWindowPos(ImVec2(GC.getWidth()*24, GC.getHeight()*14)); 
    ImGui::SetNextWindowSize(ImVec2(GC.getWidth()*12, GC.getHeight()*7));
    ImGui::Begin("General metrics");
    ImGui::Text("Water temperature: %d", (int) GC.getTemperature());
    char buffer[64];
    sprintf(buffer, "FPS: %.1f | UPS: %.1f", ImGui::GetIO().Framerate, ups);
    ImGui::Text("%s", buffer);

    UPSHistory[UPSIndex] = ups;
    UPSIndex = (UPSIndex + 1) % 100;

    ImGui::PlotLines("UPS history", UPSHistory, 100, 0, nullptr, 20.0f, 60.0f, ImVec2(0, GC.getHeight()/2));


    float cpuTemp = GetCPUTemperature();
    ImGui::Text("CPU Temp: %.1f °C", cpuTemp);
    // Update temperature history
    CPUtempHistory[CPUtempIndex] = cpuTemp;
    CPUtempIndex = (CPUtempIndex + 1) % 100;

    ImGui::PlotLines("CPU Temp history", CPUtempHistory, 100, 0, nullptr, 20.0f, 60.0f, ImVec2(0, GC.getHeight()/2));
    
    std::string ipAddress = GetIPAddress();
    ImGui::Text("IP Address: %s", ipAddress.c_str());

    ImGui::Text("System status:");

// Display the status with different colors
    ImGui::SameLine();
    bool noIP = ipAddress.empty() ; 

    if (GC.guiProgramStatus == Online) {
        ImGui::TextColored(ImVec4(0.0f, 1.0f, 0.0f, 1.0f), systemStr[GC.guiProgramStatus]); // Green for Online
    }
    if(noIP){
        ImGui::TextColored(ImVec4(1.0f, 0.0f, 0.0f, 1.0f), systemStr[Offline]); // Red for Offline
    }

    if ((GC.guiProgramStatus == ErrorDetected_TimedOut) || (GC.guiProgramStatus == ErrorDetected_FrameError)){
        ImGui::TextColored(ImVec4(1.0f, 1.0f, 0.0f, 1.0f), systemStr[GC.guiProgramStatus]); // Yellow for ErrorDetected

        int restartTimer = int((GC.internalRestartTime + 8000000 - getCurrentTimeMicros())/1000000);

        
        ImGui::SameLine();
        // Display the "restarting in X" message
        if (restartTimer > 0) {
            ImGui::Text(" Restarting in %d seconds", restartTimer);
        } else {
            ImGui::Text(" Restarting...");
        }

    }

    if ((GC.guiProgramStatus == Reset_Triggered)){
        ImGui::TextColored(ImVec4(1.0f, 1.0f, 0.0f, 1.0f), systemStr[GC.guiProgramStatus]); // Yellow for ErrorDetected

        int restartTimer = int((GC.internalRestartTime + 8000000 - getCurrentTimeMicros())/1000000);

        
        ImGui::SameLine();
        // Display the "restarting in X" message
        if (restartTimer > 0) {
            ImGui::Text(" Restarting in %d seconds", restartTimer);
        } else {
            ImGui::Text(" Restarting...");
        }

    }

    ImGui::End();
    
}


//System information functions - - - - - - - - - - - - - - - -

float GetCPUTemperature() {
    std::ifstream file("/sys/class/thermal/thermal_zone0/temp");
    float temp;
    if (file) {
        file >> temp;
        temp /= 1000.0f; // Convert millidegrees to Celsius
    }
    return temp;
}
std::string GetIPAddress() {
    struct ifaddrs *ifap, *ifa;
    struct sockaddr_in *sa;
    char *addr;

    std::string ipAddress = "Not Found";

    if (getifaddrs(&ifap) == 0) {
        for (ifa = ifap; ifa; ifa = ifa->ifa_next) {
            if (ifa->ifa_addr && ifa->ifa_addr->sa_family == AF_INET) { // IPv4
                sa = (struct sockaddr_in *) ifa->ifa_addr;
                addr = inet_ntoa(sa->sin_addr);
                if (std::string(ifa->ifa_name) == "eth0" || std::string(ifa->ifa_name) == "wlan0") {
                    ipAddress = addr;
                    break;
                }
            }
        }
        freeifaddrs(ifap);
    }
    return ipAddress;
}
