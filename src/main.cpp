#include <stdio.h>

#include <iostream>
#include "SPS.h"
#include "gui.h"



int main() {
    if (!glfwInit()) return -1;

    GLFWwindow* window = glfwCreateWindow(1500, 1200, "Sonar Positioning System", NULL, NULL);
    if (!window) {
        glfwTerminate();
        return -1;
    }
    
    glfwMakeContextCurrent(window);
    InitImGui(window);

    while (!glfwWindowShouldClose(window)) {
        glfwPollEvents();

        glClear(GL_COLOR_BUFFER_BIT);
        RenderUI();

        glfwSwapBuffers(window);
    }

    CleanupImGui();
    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;
}
