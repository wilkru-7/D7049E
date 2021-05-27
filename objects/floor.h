//
// Created by carol on 2021-05-01.
//

#ifndef D7049E_FLOOR_H
#define D7049E_FLOOR_H

#include "object.h"

/**
 * Class for the static object representing a floor, inherit object
 */
namespace {
    class Floor : public Object{
    public:
        Floor(float color[4], reactphysics3d::RigidBody* body);

        void reflectSubmit() override;

        void drawSubmit() override;

        float scalingMatrix[16];
        bgfx::TextureHandle fieldstoneTex;
        bgfx::ProgramHandle programTextureLighting;
        float position[3];

    };
}

#endif //D7049E_FLOOR_H