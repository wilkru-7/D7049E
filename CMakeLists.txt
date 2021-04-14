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
# glad
add_library("glad" "glad/src/glad.c")
target_include_directories("glad" PRIVATE "glad/include")
target_include_directories(bgfx_test PRIVATE "glad/include")
target_link_libraries(bgfx_test glad)

#target_link_libraries(bgfx_test glfw)