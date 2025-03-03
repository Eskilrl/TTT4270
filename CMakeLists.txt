cmake_minimum_required(VERSION 3.10)
project(MyImGuiProject)

set(CMAKE_CXX_STANDARD 17)

# Set default build type to Release if not specified
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release CACHE STRING "Choose build type: Debug or Release" FORCE)
endif()

# Compiler flags for Debug and Release
set(CMAKE_CXX_FLAGS_DEBUG "-g -Wall -Wextra -O0")      # Add debugging symbols
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -DNDEBUG")            # Optimize for speed

# Add GLFW
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

set(EIGEN_DIR ${CMAKE_SOURCE_DIR}/libs/eigen)

include_directories(${IMGUI_DIR} ${IMGUI_DIR}/backends include)

# Add your executable
add_executable(TTT4270_SPS src/main.cpp src/gui.cpp src/SPS.cpp ${IMGUI_SRC})

# Link libraries
target_link_libraries(TTT4270_SPS glfw GL dl pthread)

# Print build type for debugging
message(STATUS "Build type: ${CMAKE_BUILD_TYPE}")
