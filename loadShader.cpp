//
// Created by carol on 2021-04-19.
//

#include "loadShader.h"
#include <iostream>
#include "bgfx/bgfx.h"


bgfx::ShaderHandle loadShader(const char *FILENAME)
{
    const char* shaderPath = "???";
    switch(bgfx::getRendererType()) {
        case bgfx::RendererType::Noop:
        case bgfx::RendererType::Direct3D9:  shaderPath = "../bgfx.cmake/bgfx/examples/runtime/shaders/dx9/";   break;
        case bgfx::RendererType::Direct3D11: shaderPath = "../bgfx.cmake/bgfx/examples/runtime/shaders/dx11/";  break;
        case bgfx::RendererType::Direct3D12: shaderPath = "../bgfx.cmake/bgfx/examples/runtime/shaders/dx12/";  break;
        case bgfx::RendererType::Gnm:        shaderPath = "../bgfx.cmake/bgfx/examples/runtime/shaders/pssl/";  break;
        case bgfx::RendererType::Metal:      shaderPath = "../bgfx.cmake/bgfx/examples/runtime/shaders/metal/"; break;
        case bgfx::RendererType::OpenGL:     shaderPath = "../bgfx.cmake/bgfx/examples/runtime/shaders/glsl/";  break;
        case bgfx::RendererType::OpenGLES:   shaderPath = "../bgfx.cmake/bgfx/examples/runtime/shaders/essl/";  break;
        case bgfx::RendererType::Vulkan:     shaderPath = "../bgfx.cmake/bgfx/examples/runtime/shaders/spirv/"; break;
    }
    size_t shaderLen = strlen(shaderPath);
    size_t fileLen = strlen(FILENAME);
    char *filePath = (char *)calloc(1, shaderLen + fileLen + 1);

    memcpy(filePath, shaderPath, shaderLen);
    memcpy(&filePath[shaderLen], FILENAME, fileLen);

    FILE *file = fopen(filePath, "rb");
    fseek(file, 0, SEEK_END);
    long fileSize = ftell(file);
    fseek(file, 0, SEEK_SET);

    const bgfx::Memory *mem = bgfx::alloc(fileSize + 1);
    fread(mem->data, 1, fileSize, file);
    mem->data[mem->size - 1] = '\0';
    fclose(file);

    return bgfx::createShader(mem);
}