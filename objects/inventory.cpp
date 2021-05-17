//
// Created by Wilma on 14/05/2021.
//

#include "inventory.h"

Inventory::Inventory(std::list<Object*> *list) {
    objects = list;
}

void Inventory::addToInventory(Object* item) {
    inventory.push_back(item);
}

void Inventory::pickFromInventory() {
    Object* item = inventory.at(0);
    objects->push_back(item);
}

void Inventory::update(int id) {
    switch(id) {
        case 111:
            pickFromInventory();
            break;
        case 110:
            Object* item = objects->back();
            addToInventory(item);
            objects->remove(item);
            std::cout << "Pick up" << std::endl;
            break;
    }
}