//
// Created by Wilma on 05/05/2021.
//

#pragma once

#include "../resources.h"
#include "reactphysics3d/reactphysics3d.h"

/**
 * Abstract class to be inherited by all objects.
 * An Object has a Rigid Body, ProgramHandle, Mesh, position, color,
 * bool for being pickable or not and type for collision check
 *
 * reflectSubmit and drawSubmit is used for rendering and shutdown to unload all meshes
 */
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