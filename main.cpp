#include <cstdio>

#include <bx/timer.h>
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
/*using namespace std;

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

    bgfx::VertexBufferHandle vbh1 = bgfx::createVertexBuffer(bgfx::makeRef(cubeVertices, sizeof(cubeVertices)), pcvDecl);
    bgfx::IndexBufferHandle ibh1 = bgfx::createIndexBuffer(bgfx::makeRef(cubeTriList, sizeof(cubeTriList)));

    bgfx::ShaderHandle vsh = loadShader("vs_cubes.bin");
    bgfx::ShaderHandle fsh = loadShader("fs_cubes.bin");
    bgfx::ProgramHandle program = bgfx::createProgram(vsh, fsh, true);

    int64_t timeOffset = bx::getHPCounter();

    float time = (float)( (bx::getHPCounter()-timeOffset)/double(bx::getHPFrequency() ) );

    unsigned int counter = 0;
    while(!glfwWindowShouldClose(window)) {
        const bx::Vec3 at = {0.0f, 0.0f,  0.0f};
        const bx::Vec3 eye = {0.0f, 0.0f, -20.0f};

        float view[16];
        bx::mtxLookAt(view, eye, at);
        float proj[16];
        bx::mtxProj(proj, 60.0f, float(WNDW_WIDTH) / float(WNDW_HEIGHT), 0.1f, 100.0f, bgfx::getCaps()->homogeneousDepth);
        bgfx::setViewTransform(0, view, proj);

        //float mtx[16];
        //bx::mtxRotateXY(mtx, counter * 0.01f, counter * 0.01f);
        //bgfx::setTransform(mtx);

        //bgfx::setVertexBuffer(0, vbh);
        //bgfx::setIndexBuffer(ibh);

        for (uint32_t yy = 0; yy < 5; ++yy)
        {
            for (uint32_t xx = 0; xx < 5; ++xx)
            {
                float mtx[16];
                bx::mtxRotateXY(mtx, counter * 0.01f, counter * 0.01f);
                mtx[12] = -6.0f + float(xx)*3.0f;
                mtx[13] = -6.0f + float(yy)*3.0f;
                mtx[14] = 0.0f;

                // Set model matrix for rendering.
                bgfx::setTransform(mtx);

                // Set vertex and index buffer.
                bgfx::setVertexBuffer(0, vbh);
                bgfx::setIndexBuffer(ibh);

                // Submit primitive for rendering to view 0.
                bgfx::submit(0, program);
            }
        }

        float mtx[16];
        bx::mtxRotateXY(mtx, counter * 0.01f, counter * 0.01f);
        mtx[12] = -16.5f + 3.0f;
        mtx[13] = -11.5f + 3.0f;
        mtx[14] = 0.0f;

        // Set model matrix for rendering.
        bgfx::setTransform(mtx);

        // Set vertex and index buffer.
        bgfx::setVertexBuffer(0, vbh1);
        bgfx::setIndexBuffer(ibh1);

        // Submit primitive for rendering to view 0.
        bgfx::submit(0, program);



        //bgfx::submit(0, program);
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
}*/

#define ENTRY_CONFIG_IMPLEMENT_MAIN 1
#include "common.h"
#include "bgfx_utils.h"

namespace{
    class Test : public entry::AppI {
        public:
        Test(const char* _name, const char* _description, const char* _url)
                : entry::AppI(_name, _description, _url)
        {
        }

        bgfx::VertexBufferHandle vbh;
        bgfx::IndexBufferHandle ibh;
        bgfx::VertexBufferHandle vbh1;
        bgfx::IndexBufferHandle ibh1;
        bgfx::ProgramHandle program;
        GLFWwindow* window;
        entry::MouseState m_mouseState;
        uint32_t m_width;
        uint32_t m_height;
        uint32_t m_debug;
        uint32_t m_reset;
        unsigned int counter;

        void init(int32_t _argc, const char* const* _argv, uint32_t _width, uint32_t _height) override
        {
            m_width  = _width;
            m_height = _height;
            m_debug  = BGFX_DEBUG_TEXT;
            m_reset  = BGFX_RESET_VSYNC;
            counter = 0;

            glfwInit();
            window = glfwCreateWindow(WNDW_WIDTH, WNDW_HEIGHT, "Hello, bgfx!", NULL, NULL);

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
            vbh = bgfx::createVertexBuffer(bgfx::makeRef(cubeVertices, sizeof(cubeVertices)), pcvDecl);
            ibh = bgfx::createIndexBuffer(bgfx::makeRef(cubeTriList, sizeof(cubeTriList)));

            vbh1 = bgfx::createVertexBuffer(bgfx::makeRef(cubeVertices, sizeof(cubeVertices)), pcvDecl);
            ibh1 = bgfx::createIndexBuffer(bgfx::makeRef(cubeTriList, sizeof(cubeTriList)));

            bgfx::ShaderHandle vsh = loadShader("vs_cubes.bin");
            bgfx::ShaderHandle fsh = loadShader("fs_cubes.bin");
            program = bgfx::createProgram(vsh, fsh, true);
        }

        virtual int shutdown() override
        {
            bgfx::destroy(ibh);
            bgfx::destroy(vbh);
            bgfx::shutdown();
            glfwDestroyWindow(window);
            glfwTerminate();

            return 0;
        }

        bool update() override
        {
            if (!entry::processEvents(m_width, m_height, m_debug, m_reset, &m_mouseState) )
            {
                const bx::Vec3 at = {0.0f, 0.0f, 0.0f};
                const bx::Vec3 eye = {0.0f, 0.0f, -20.0f};

                float view[16];
                bx::mtxLookAt(view, eye, at);
                float proj[16];
                bx::mtxProj(proj, 60.0f, float(WNDW_WIDTH) / float(WNDW_HEIGHT), 0.1f, 100.0f,
                            bgfx::getCaps()->homogeneousDepth);
                bgfx::setViewTransform(0, view, proj);

                //float mtx[16];
                //bx::mtxRotateXY(mtx, counter * 0.01f, counter * 0.01f);
                //bgfx::setTransform(mtx);

                //bgfx::setVertexBuffer(0, vbh);
                //bgfx::setIndexBuffer(ibh);

                for (uint32_t yy = 0; yy < 5; ++yy) {
                    for (uint32_t xx = 0; xx < 5; ++xx) {
                        float mtx[16];
                        bx::mtxRotateXY(mtx, counter * 0.01f, counter * 0.01f);
                        mtx[12] = -6.0f + float(xx) * 3.0f;
                        mtx[13] = -6.0f + float(yy) * 3.0f;
                        mtx[14] = 0.0f;

                        // Set model matrix for rendering.
                        bgfx::setTransform(mtx);

                        // Set vertex and index buffer.
                        bgfx::setVertexBuffer(0, vbh);
                        bgfx::setIndexBuffer(ibh);

                        // Submit primitive for rendering to view 0.
                        bgfx::submit(0, program);
                    }
                }

                float mtx[16];
                bx::mtxRotateXY(mtx, counter * 0.01f, counter * 0.01f);
                mtx[12] = -16.5f + 3.0f;
                mtx[13] = -11.5f + 3.0f;
                mtx[14] = 0.0f;

                // Set model matrix for rendering.
                bgfx::setTransform(mtx);

                // Set vertex and index buffer.
                bgfx::setVertexBuffer(0, vbh1);
                bgfx::setIndexBuffer(ibh1);

                // Submit primitive for rendering to view 0.
                bgfx::submit(0, program);



                //bgfx::submit(0, program);
                bgfx::frame();
                glfwSwapBuffers(window);
                glfwPollEvents();
                //glfwWaitEvents();
                counter++;
                return true;
            }
            return false;
        }
    };
}

ENTRY_IMPLEMENT_MAIN(
        Test
     , "Test"
     , "Test test test"
     , "www"
);
