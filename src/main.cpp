#include <stdio.h>

#include <iostream>
#include "SPS.h"
#include "gui.h"

GuiContainer GuiC;

int main() {
    if (!glfwInit()) return -1;

    GLFWwindow* window = glfwCreateWindow(GuiC.getWidth()*37, GuiC.getHeight()*22, "Sonar Positioning System", NULL, NULL);
    if (!window) {
        glfwTerminate();
        return -1;
    }
    
    glfwMakeContextCurrent(window);
    InitImGui(window);

    while (!glfwWindowShouldClose(window)) {
        glfwPollEvents();

        glClear(GL_COLOR_BUFFER_BIT);
        RenderUI(GuiC);

        glfwSwapBuffers(window);
    }

    CleanupImGui();
    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;
}
