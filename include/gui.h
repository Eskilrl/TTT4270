#pragma once

#include "string"
#include <fstream>
#include <iostream>
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

//This class contains all constants and inputs to display to the GUI
class GuiContainer{
private:
    int InnerWindowHeightUnit = 48;
    int InnerWindowWidthUnit = 48;
    std::vector<double> EstimatedPos = {500,500,550};
    float BarometerDepth = 500;
    float Temperature = 3;

public:
    //All variables beein public is bad. pls fix:()
    float f;
    //std::string DiameterBuf = "5";
    //bool getNewData(SPS &data);
    int getHeight();
    int getWidth();
    std::vector<double> getPos();
    float getBaroDepth();
    float getTemperature();
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




