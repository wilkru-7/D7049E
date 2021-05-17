//
// Created by carol on 2021-05-01.
//

#ifndef D7049E_LIGHT_H
#define D7049E_LIGHT_H

#endif //D7049E_LIGHT_H

#include "../resources.h"
#include "object.h"

namespace {
    class Light : public Object {
    public:
        Light::Light(float color[4]);

        void Light::update();

        void shutdown();

        void Light::reflectSubmit();

        void Light::drawSubmit();

        void Light::setViewState(ViewState viewState);

        void Light::setLight();

        Mesh vplaneMesh;
        bgfx::ProgramHandle programColorTexture;
        bgfx::TextureHandle flareTex;
        ViewState viewState;
        float color[4];
        float position[3];

    };
}