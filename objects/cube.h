//
// Created by carol on 2021-05-13.
//

#ifndef D7049E_CUBE_H
#define D7049E_CUBE_H

#include "../resources.h"
#include <reactphysics3d/reactphysics3d.h>
#include "object.h"

namespace {
    class Cube : public Object{
    public:
        void Cube::init(float color[4], reactphysics3d::RigidBody* body);

        void Cube::shutdown();

        void Cube::reflectSubmit();

        void Cube::drawSubmit();

        reactphysics3d::RigidBody* cubePhysics;
        Mesh cubeMesh;
        float cubeMtx[16];
        float color[4];
        bgfx::ProgramHandle programColorLighting;
    };
}

#endif //D7049E_CUBE_H
