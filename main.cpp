#include <cstdio>
#include "bgfx/bgfx.h"
#include "bgfx/platform.h"
#include "bx/math.h"
#include "GLFW/glfw3.h"
#define GLFW_EXPOSE_NATIVE_WIN32
#include "GLFW/glfw3native.h"

#include "loadShader.h"
#include "cube.cpp"

#define WNDW_WIDTH 1600
#define WNDW_HEIGHT 900

using namespace std;

int main(void)
{
    glfwInit();
    GLFWwindow* window = glfwCreateWindow(WNDW_WIDTH, WNDW_HEIGHT, "Hello, bgfx!", NULL, NULL);

    bgfx::PlatformData pd;
    pd.nwh = glfwGetWin32Window(window);
    bgfx::setPlatformData(pd);

    bgfx::Init bgfxInit;
    bgfxInit.type = bgfx::RendererType::Count;
    bgfxInit.resolution.width = WNDW_WIDTH;
    bgfxInit.resolution.height = WNDW_HEIGHT;
    bgfxInit.resolution.reset = BGFX_RESET_VSYNC;
    bgfx::init(bgfxInit);

    bgfx::setViewClear(0, BGFX_CLEAR_COLOR | BGFX_CLEAR_DEPTH, 0x443355FF, 1.0f, 0);
    bgfx::setViewRect(0, 0, 0, WNDW_WIDTH, WNDW_HEIGHT);

    bgfx::VertexLayout pcvDecl;
    pcvDecl.begin()
            .add(bgfx::Attrib::Position, 3, bgfx::AttribType::Float)
            .add(bgfx::Attrib::Color0, 4, bgfx::AttribType::Uint8, true)
            .end();
    bgfx::VertexBufferHandle vbh = bgfx::createVertexBuffer(bgfx::makeRef(cubeVertices, sizeof(cubeVertices)), pcvDecl);
    bgfx::IndexBufferHandle ibh = bgfx::createIndexBuffer(bgfx::makeRef(cubeTriList, sizeof(cubeTriList)));

    bgfx::ShaderHandle vsh = loadShader("vs_cubes.bin");
    bgfx::ShaderHandle fsh = loadShader("fs_cubes.bin");
    bgfx::ProgramHandle program = bgfx::createProgram(vsh, fsh, true);

    unsigned int counter = 0;
    while(!glfwWindowShouldClose(window)) {
        const bx::Vec3 at = {0.0f, 0.0f,  0.0f};
        const bx::Vec3 eye = {0.0f, 0.0f, -5.0f};
        float view[16];
        bx::mtxLookAt(view, eye, at);
        float proj[16];
        bx::mtxProj(proj, 60.0f, float(WNDW_WIDTH) / float(WNDW_HEIGHT), 0.1f, 100.0f, bgfx::getCaps()->homogeneousDepth);
        bgfx::setViewTransform(0, view, proj);

        float mtx[16];
        bx::mtxRotateXY(mtx, counter * 0.01f, counter * 0.01f);
        bgfx::setTransform(mtx);

        bgfx::setVertexBuffer(0, vbh);
        bgfx::setIndexBuffer(ibh);

        bgfx::submit(0, program);
        bgfx::frame();
        glfwSwapBuffers(window);
        glfwPollEvents();
        //glfwWaitEvents();
        counter++;
    }

    bgfx::destroy(ibh);
    bgfx::destroy(vbh);
    bgfx::shutdown();
    glfwDestroyWindow(window);
    glfwTerminate();

    return 0;
}