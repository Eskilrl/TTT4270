cmake_minimum_required(VERSION 3.10)
project(MyImGuiProject)

set(CMAKE_CXX_STANDARD 17)

# Add GLFW (if not installed, we can use FetchContent)
find_package(glfw3 REQUIRED)

# ImGui source files
set(IMGUI_DIR ${CMAKE_SOURCE_DIR}/libs/imgui)

set(IMGUI_SRC
    ${IMGUI_DIR}/imgui.cpp
    ${IMGUI_DIR}/imgui_draw.cpp
    ${IMGUI_DIR}/imgui_demo.cpp
    ${IMGUI_DIR}/imgui_tables.cpp
    ${IMGUI_DIR}/imgui_widgets.cpp
    ${IMGUI_DIR}/backends/imgui_impl_glfw.cpp
    ${IMGUI_DIR}/backends/imgui_impl_opengl3.cpp
)

include_directories(${IMGUI_DIR} ${IMGUI_DIR}/backends include)

add_executable(MyImGuiProject src/main.cpp src/gui.cpp ${IMGUI_SRC})

# Link libraries
target_link_libraries(MyImGuiProject glfw GL dl)
