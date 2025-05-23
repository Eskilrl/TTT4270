#pragma once

#include "string"
#include <fstream>
#include <iostream>
#include <cstring>
#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <ifaddrs.h>
#include <arpa/inet.h>
#include "SPS.h"
#include <GLFW/glfw3.h>
#include "imgui.h"
#include "backends/imgui_impl_glfw.h"
#include "backends/imgui_impl_opengl3.h"


//Define variables

extern float my_color[4];
extern bool my_tool_active;
extern double lastTime;
extern int updateCount;
extern double ups;
static float CPUtempHistory[100] = {0}; 
static int CPUtempIndex = 0;
static float UPSHistory[100] = {0};
static int UPSIndex = 0;
static float estimationHistory[100] = {0};
static int estimationIndex = 0;
static int tankWidt = 38; //Width of tank in cm
static int tankDepth = 34; //Depth of tank in cm



extern const char* statusStr[];
extern const char* systemStr[];

enum comStatus{
    NoData,
    MsgRecievedOK,
    NumByteError,
    CheckSumError,
    EOF_Error,
    Sensor_error
};

enum programStatus{
    Offline,
    Online,
    ErrorDetected_TimedOut,
    ErrorDetected_FrameError,
    Reset_Triggered
};

struct SystemStatus{
    std::atomic<comStatus> comstat;
};

//This class contains all constants and inputs to display to the GUI
class GuiContainer{
private:
    int InnerWindowHeightUnit = 48;
    int InnerWindowWidthUnit = 48;
    std::vector<double> EstimatedPos = {500,500,550};
    std::vector<double> BioscopePosition = {0,0,0,0};
    float BarometerDepth = 500;
    float Temperature = 3;
    Eigen::Vector4d PositionVector;
    int calcTime = 0;
    std::vector <double> timeVector = {0,0,0,0};
public:
    //All variables beein public is bad. pls fix:()
    float f;
    bool autoPing = false;
    bool pingOnce = false;
    long long internalLastUpdateTime = 0;
    long long internalRestartTime = 0;
    int UpdateRate = 1;
    bool SysReset = false;
    SystemStatus systemSts;
    programStatus guiProgramStatus;
    //std::string DiameterBuf = "5";
    //bool getNewData(SPS &data);
    int getHeight();
    int getWidth();
    std::vector<double> getPos();
    float getBaroDepth();
    float getTemperature();
    Eigen::Vector4d returnPositionVector();
    bool updatePositionData(Eigen::Vector4d positionVector); //Pass by copy because we dont want to change this :)
    bool updateMetrics(int time, std::vector<double> &tvec, SystemStatus &stmSt, programStatus &pgmst,
    long long lastUpdTime, long long restartstrTime);
    int getMetrics();
    std::vector <double> returnTimeVector();
    double var_x{}, var_y{}, var_z{}, var_t{};
};


//Define functions

void InitImGui(GLFWwindow* window);
void CleanupImGui();
void RenderUI(GuiContainer &GuiC);

//Subwindow functions
void CreateTrueDepthUI(GuiContainer &GC);
void CreatePosition2D(GuiContainer &GC);
void CreateErrors(GuiContainer &GC);
void CreateControllParameters(GuiContainer &GC);
void CreateGeneralMetrics(GuiContainer &GC);
void CreateExampleUI();

//System information functions
float GetCPUTemperature();
std::string GetIPAddress();



