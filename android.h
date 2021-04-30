//
// Created by carol on 2021-04-30.
//

#ifndef D7049E_ANDROID_H
#define D7049E_ANDROID_H

#endif //D7049E_ANDROID_H

#include "resources.h"

namespace {
    class Android {
    public:
        void init();

        void shutdown();

        void Android::reflectSubmit(bgfx::ProgramHandle programColorLighting);

        void Android::drawSubmit(bgfx::ProgramHandle programColorLighting);

        void Android::updateMtx(float x, float z, float rot);

        float * Android::getMtx();

        Mesh androidMesh;
        float androidMtx[16];
    };
}

