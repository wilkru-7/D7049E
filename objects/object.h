//
// Created by Wilma on 05/05/2021.
//

#pragma once

#include "../resources.h"
#include "reactphysics3d/reactphysics3d.h"

namespace {
    class Object {
    public:
        //Object(float color[4], reactphysics3d::RigidBody* body) {}

        virtual void shutdown() {
            mesh.unload();
        };

        virtual void reflectSubmit() = 0;

        virtual void drawSubmit() = 0;

        reactphysics3d::RigidBody *physicsBody;
        bgfx::ProgramHandle programColorLighting;
        Mesh mesh;
        float mtx[16];
        float color[4];
        bool isPickabel = false;
        std::string type;
    };
}