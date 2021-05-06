//
// Created by carol on 2021-05-01.
//

#ifndef D7049E_TREE_H
#define D7049E_TREE_H

#endif //D7049E_TREE_H

#include "../resources.h"
#include "object.h"

namespace {
    class Tree: public Object {
    public:
        void Tree::init(float treePosition[3], float color[4]);

        void Tree::shutdown();

        void Tree::reflectSubmit();

        void Tree::drawSubmit();

        Mesh treeMesh;
        float treePosition[3];
        float treeMtx[16];
        bgfx::ProgramHandle programColorLighting;
        float color[4];
    };
}