#include <stdio.h>

#include <iostream>
#include "SPS.h"
#include "gui.h"

GuiContainer GuiC;
SPS sps;

int main() {
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
    return 0;
}

