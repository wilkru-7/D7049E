//
// Created by Wilma on 10/05/2021.
//

#include "collisionEvent.h"

void CollisionEvent::onContact(const CollisionCallback::CallbackData& callbackData) {
    if(callbackData.getContactPair(0).getEventType() == CollisionCallback::ContactPair::EventType::ContactStart) {
        std::cout << "Event:" << std::endl;
        notifyObservers(id());
    }
}