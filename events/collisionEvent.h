//
// Created by Wilma on 10/05/2021.
//

#ifndef D7049E_COLLISIONEVENT_H
#define D7049E_COLLISIONEVENT_H

#include "event.h"
#include "reactphysics3d/reactphysics3d.h"
#include "../objects/object.h"

namespace {
    class CollisionEvent : public Event, public reactphysics3d::EventListener {
    public:
        CollisionEvent(std::vector<Object*> *objects);

        int id() override {return 2;}

        void onContact(const CollisionCallback::CallbackData &callbackData) override;

        std::vector<Object*> *objects;
    };
}

#endif //D7049E_COLLISIONEVENT_H
