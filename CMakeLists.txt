cmake_minimum_required(VERSION 3.10)

# set the project name
project(D7049E VERSION 1.0)

include(CTest)
enable_testing()

# add the executable
add_executable(bgfx_test main.cpp)

set(CMAKE_CXX_STANDARD 14)
set(SOURCE_FILES main.cpp)

include(CPack)

add_subdirectory(bgfx.cmake)
add_subdirectory(glfw)

target_link_libraries(bgfx_test bgfx example-common glfw)
#target_link_libraries(bgfx_test glfw)