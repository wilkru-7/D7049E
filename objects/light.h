//
// Created by carol on 2021-05-01.
//

#ifndef D7049E_LIGHT_H
#define D7049E_LIGHT_H

#endif //D7049E_LIGHT_H

#include "../resources.h"

namespace {
    class Light {
    public:
        void Light::init();

        void Light::update();

        void Light::reflect();

        void Light::setLight();

        void Light::drawSubmit(ViewState viewState);

        float lightRgbInnerR[MAX_NUM_LIGHTS][4];
        float lightPosRadius[MAX_NUM_LIGHTS][4];
        Mesh vplaneMesh;
        bgfx::ProgramHandle programColorTexture;
        bgfx::TextureHandle flareTex;

    };
}