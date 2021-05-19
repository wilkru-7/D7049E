cmake_minimum_required(VERSION 3.10)

# set the project name
project(D7049E VERSION 1.0)

include(CTest)
enable_testing()

# add the executable
add_executable(bgfx_test app.cpp resources.h objects/android.cpp objects/android.h objects/floor.cpp objects/floor.h objects/light.cpp objects/light.h objects/tree.cpp objects/tree.h observer/observer.h events/keyboardEvent.cpp events/keyboardEvent.h events/event.h physics/physicsWorld.h physics/physicsWorld.cpp events/collisionEvent.cpp events/collisionEvent.h objects/cube.cpp objects/cube.h objects/house.h objects/house.cpp)

set(CMAKE_CXX_STANDARD 14)
set(SOURCE_FILES app.cpp)

include(CPack)

add_subdirectory(bgfx.cmake)
add_subdirectory(glfw)
add_subdirectory(reactphysics3d)
add_subdirectory(soloud/contrib)

target_link_libraries(bgfx_test bgfx example-common glfw reactphysics3d soloud)
target_include_directories( bgfx_test PUBLIC bgfx.cmake/bgfx/include bgfx.cmake/bgfx/examples/common soloud/include)
set_target_properties(bgfx_test PROPERTIES LINK_FLAGS "/ENTRY:\"mainCRTStartup\"" )

#target_link_libraries(bgfx_test glfw)
