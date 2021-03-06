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

/**
 * Inventory have an Object as owner and stored the objects in an vector.
 * A pointer to the worlds object vector is also required to remove and add objects
 */
namespace {
    class Inventory : public Observer {
    public:
        Inventory(std::vector<Object *> *objects, Object* owner);

        void addToInventory(Object *item, int pos);

        void pickFromInventory(int id);

        void update(int id) override;

        Object* owner;
        std::vector<Object *> inventory;
        std::vector<Object *> *objects;

    };
}

#endif //D7049E_INVENTORY_H
