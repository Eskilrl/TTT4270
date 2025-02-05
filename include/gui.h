#pragma once

#include "math.h"
#include <GLFW/glfw3.h>
#include "imgui.h"
#include "backends/imgui_impl_glfw.h"
#include "backends/imgui_impl_opengl3.h"


//Define variables

extern float my_color[4];
extern bool my_tool_active;

//Define functions

void InitImGui(GLFWwindow* window);
void CleanupImGui();
void RenderUI();
void CreateDepthUI();
void CreateExampleUI();


