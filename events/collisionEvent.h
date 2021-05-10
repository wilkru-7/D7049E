//
// Created by Wilma on 10/05/2021.
//

#ifndef D7049E_COLLISIONEVENT_H
#define D7049E_COLLISIONEVENT_H

#include "event.h"
#include "reactphysics3d/reactphysics3d.h"
namespace {
    class CollisionEvent : public Event, public reactphysics3d::EventListener {
    public:
        int id() override {return 9;}

        void onContact(const CollisionCallback::CallbackData &callbackData) override;
    };
}

#endif //D7049E_COLLISIONEVENT_H
