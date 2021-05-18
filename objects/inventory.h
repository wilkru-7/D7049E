//
// Created by Wilma on 14/05/2021.
//

#ifndef D7049E_INVENTORY_H
#define D7049E_INVENTORY_H

#include "object.h"
#include "../observer/observer.h"
#include <vector>
#include <list>
#include <iostream>

namespace {
    class Inventory : public Observer {
    public:
        Inventory(std::list<Object *> *objects, Object* owner);

        void addToInventory(Object *item);

        void pickFromInventory();

        void update(int id) override;

        Object* owner;
        std::vector<Object *> inventory;
        std::list<Object *> *objects;

    };
}

#endif //D7049E_INVENTORY_H
