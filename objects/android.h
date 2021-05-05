//
// Created by carol on 2021-04-30.
//

#ifndef D7049E_ANDROID_H
#define D7049E_ANDROID_H

#endif //D7049E_ANDROID_H

#include "../resources.h"
#include <reactphysics3d/reactphysics3d.h>

namespace {
    class Android {
    public:
        void Android::init();

        void Android::shutdown();

        void Android::reflectSubmit();

        void Android::drawSubmit();

        void Android::updateRot(float rot);

        void Android::updateMtx(float x, float y, float z);

        float * Android::getMtx();

        Mesh androidMesh;
        float androidMtx[16];
        bgfx::ProgramHandle programColorLighting;
    };
}

