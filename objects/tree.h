//
// Created by carol on 2021-05-01.
//

#ifndef D7049E_TREE_H
#define D7049E_TREE_H

#endif //D7049E_TREE_H

#include "../resources.h"

namespace {
    class Tree {
    public:
        void Tree::init(float treePosition[3]);

        void Tree::shutdown();

        void Tree::reflectSubmit(bgfx::ProgramHandle programColorLighting);

        void Tree::draw(bgfx::ProgramHandle programColorLighting);

        Mesh treeMesh;
        float treePosition[3];
        float treeMtx[16];
    };
}