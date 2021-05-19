//
// Created by andre on 2021-05-18.
//

#ifndef D7049E_OBJECTMANAGER_H
#define D7049E_OBJECTMANAGER_H
#include "../observer/observer.h"
#include "object.h"
#include <vector>
namespace {
    class ObjectManager : public Observer{
    public:
        ObjectManager();

        void addToWorld(Object* object);
        void removeFromWorld(Object* object);
        //void update(int id, Object* object);

        std::vector<Object*> objects;
    };
}
#endif //D7049E_OBJECTMANAGER_H
