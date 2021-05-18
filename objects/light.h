//
// Created by carol on 2021-05-01.
//

#ifndef D7049E_LIGHT_H
#define D7049E_LIGHT_H

#include "object.h"

namespace {
    class Light : public Object {
    public:
        Light(float color[4], reactphysics3d::RigidBody* body);

        void shutdown() override;

        void reflectSubmit() override;

        void drawSubmit() override;

        void setViewState(ViewState viewState);

        void setLight();

        bgfx::TextureHandle flareTex;
        ViewState viewState;
        float position[3];

    };
}

#endif //D7049E_LIGHT_H