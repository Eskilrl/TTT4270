#include <stdio.h>

#include <iostream>

#include "SPS.h"
#include "gui.h"

GuiContainer GuiC;
SPS sps;

int main() {

    //Test SPS system
    std::vector<double> Avector = {15600,18760, 17610, 19170};
    std::vector<double> Bvector = {7540, 2750, 14630, 610};
    std::vector<double> Cvector = {20140, 18610, 13480, 18390};
    std::vector<double> Tvector = {0.07074,0.07220,0.07690,0.07242};
    std::vector<double> Guess = {0,0,6370,0};
    int lenghtA = 4;
    double c = 299792.458;



    sps.newtonEstimatePosition(Guess,Avector,Bvector,Cvector,Tvector,lenghtA,c);


    /*

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

        //Calculation here - - - -


        //- - - - - - - -- 
        updateCount++;
        glfwPollEvents();

        glClear(GL_COLOR_BUFFER_BIT);  // Clear the window

        // Render your GUI
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
    */
    return 0;
}

