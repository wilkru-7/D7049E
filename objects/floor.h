//
// Created by carol on 2021-05-01.
//

#ifndef D7049E_FLOOR_H
#define D7049E_FLOOR_H

#endif //D7049E_FLOOR_H

#include "../resources.h"

namespace {
    class Floor {
    public:
        void Floor::init();

        void Floor::shutdown();

        void Floor::reflectSubmit(bgfx::ProgramHandle programColorLighting);

        void Floor::drawSubmit(bgfx::ProgramHandle programColorBlack);

        void Floor::blendSubmit(bgfx::ProgramHandle programTextureLighting, bgfx::TextureHandle fieldstoneTex);

        void Floor::drawBottomSubmit(bgfx::ProgramHandle programTexture, bgfx::TextureHandle figureTex);

        float floorMtx[16];
        float floorBottomMtx[16];
        Mesh vplaneMesh;
        Mesh hplaneMesh;

    };
}