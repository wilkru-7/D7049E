//
// Created by Wilma on 14/05/2021.
//

#include "inventory.h"
#include <iostream>

/**
 * Inventory have an Object as owner and stored the objects in an vector.
 * A pointer to the worlds object vector is also required to remove and add objects
 */
Inventory::Inventory(std::vector<Object*> *list, Object* object) {
    objects = list;
    owner = object;
}

/**
 * Deactivate collider and remove object from the world and add it to the inventory.
 * @param item
 * @param pos
 */
void Inventory::addToInventory(Object* item, int pos) {
    item->physicsBody->setIsActive(false);
    inventory.push_back(item);
    objects->erase(objects->begin()+pos);
}

/**
 * If inventory not empty add the object back to the world vector and remove from inventory
 * Activate the collider for the object.
 * Set the position of the object to beside the owners current position
 * @param id
 */
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

/**
 * Called from the notifyObserver.
 * 1,2,3,4 correspondes to the inventory slots and E (110) picks up an object
 * if there is one close to the current position of the owner.
 * @param id
 */
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
            rp3d::Transform ownerTransform = owner->physicsBody->getTransform();
            reactphysics3d::Vector3 ownerPos = ownerTransform.getPosition();
            int i = objects->size();
            while(i >= 1) {
                Object* item = objects->at(i-1);
                if (item->isPickabel && inventory.size() < 4) {
                    rp3d::Transform itemTransform = item->physicsBody->getTransform();
                    reactphysics3d::Vector3 itemPos = itemTransform.getPosition();
                    double distance = sqrt(pow(ownerPos.x - itemPos.x, 2.0) + pow(ownerPos.z - itemPos.z, 2.0));
                    if (distance < 5.0) {
                        addToInventory(item, i-1);
                        //std::cout << "Pick up" << std::endl;
                        break;
                    }
                }
                i = i - 1;
            }
            break;
    }
}