//
// Created by Wilma on 14/05/2021.
//

#include "inventory.h"
#include <iostream>

Inventory::Inventory(std::list<Object*> *list, Object* object) {
    objects = list;
    owner = object;
}

void Inventory::addToInventory(Object* item) {
    rp3d::Transform ownerTransform = owner->physicsBody->getTransform();
    reactphysics3d::Vector3 ownerPos = ownerTransform.getPosition();

    rp3d::Transform itemTransform = item->physicsBody->getTransform();
    reactphysics3d::Vector3 itemPos = itemTransform.getPosition();
    double distance = sqrt(pow(ownerPos.x - itemPos.x, 2.0) + pow(ownerPos.z - itemPos.z, 2.0));

    if (distance < 5.0) {
        item->physicsBody->setIsActive(false);
        inventory.push_back(item);
        objects->remove(item);
    }
}

void Inventory::pickFromInventory(int id) {
    if (!inventory.empty() && id < inventory.size()) {
        Object* item = inventory.at(id);
        inventory.erase(inventory.begin()+id);
        item->physicsBody->setIsActive(true);

        rp3d::Transform ownerTransform = owner->physicsBody->getTransform();
        reactphysics3d::Vector3 ownerPos = ownerTransform.getPosition();

        rp3d::Transform itemTransform = item->physicsBody->getTransform();
        itemTransform.setPosition(reactphysics3d::Vector3(ownerPos.x + 1, ownerPos.y, ownerPos.z + 1));
        item->physicsBody->setTransform(itemTransform);
        objects->push_back(item);
    }
}

void Inventory::update(int id) {
    switch(id) {
        case 111:
            pickFromInventory(0);
            break;
        case 112:
            pickFromInventory(1);
            break;
        case 113:
            pickFromInventory(2);
            break;
        case 114:
            pickFromInventory(3);
            break;
        case 110:
            Object* item = objects->back();
            if(item->isPickabel){
                addToInventory(item);
                std::cout << "Pick up" << std::endl;
            }
            break;
    }
}