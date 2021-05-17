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
        Inventory(std::list<Object *> *objects);

        void Inventory::addToInventory(Object *item);

        void Inventory::pickFromInventory();

        void Inventory::update(int id);

        std::vector<Object *> inventory;
        std::list<Object *> *objects;

    };
}

#endif //D7049E_INVENTORY_H
