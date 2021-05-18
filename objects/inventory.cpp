//
// Created by Wilma on 14/05/2021.
//

#include "inventory.h"

Inventory::Inventory(std::list<Object*> *list, Object* object) {
    objects = list;
    owner = object;
}

void Inventory::addToInventory(Object* item) {
    item->physicsBody->setIsActive(false);
    inventory.push_back(item);
}

void Inventory::pickFromInventory() {
    Object* item = inventory.at(0);
    item->physicsBody->setIsActive(true);

    rp3d::Transform ownerTransform = owner->physicsBody->getTransform();
    reactphysics3d::Vector3 ownerPos = ownerTransform.getPosition();

    rp3d::Transform itemTransform = item->physicsBody->getTransform();
    itemTransform.setPosition(reactphysics3d::Vector3(ownerPos.x + 1, ownerPos.y, ownerPos.z + 1));
    item->physicsBody->setTransform(itemTransform);
    objects->push_back(item);
}

void Inventory::update(int id) {
    switch(id) {
        case 111:
            pickFromInventory();
            break;
        case 110:
            Object* item = objects->back();
            if(item->isPickabel){
                addToInventory(item);
                objects->remove(item);
                std::cout << "Pick up" << std::endl;
            }
            break;
    }
}