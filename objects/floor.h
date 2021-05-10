//
// Created by carol on 2021-05-01.
//

#ifndef D7049E_FLOOR_H
#define D7049E_FLOOR_H

#endif //D7049E_FLOOR_H

#include "../resources.h"
#include "object.h"
#include "reactphysics3d/reactphysics3d.h"

namespace {
    class Floor : public Object{
    public:
        void Floor::init(float color[4], reactphysics3d::RigidBody* body);

        void Floor::shutdown();

        void Floor::reflectSubmit();

        void Floor::drawSubmit();

        //void Floor::drawBottomSubmit(bgfx::ProgramHandle programTexture, bgfx::TextureHandle figureTex);
        reactphysics3d::RigidBody* floorPhysics;
        float floorMtx[16];
        float scalingMatrix[16];
        //float floorBottomMtx[16];
        Mesh hplaneMesh;
        bgfx::ProgramHandle programTextureLighting;
        bgfx::TextureHandle fieldstoneTex;
        bgfx::ProgramHandle programColorBlack;
        float color[4];
        float position[3];

    };
}