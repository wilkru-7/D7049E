//
// Created by Wilma on 07/05/2021.
//

#ifndef D7049E_EVENT_H
#define D7049E_EVENT_H

#include "../observer/subject.h"

namespace {
    class Event : public Subject {
    public:
        virtual int id() = 0;

        void registerObserver(Observer *observer) = 0;

        void removeObserver(Observer *observer) = 0;

        void notifyObservers(float position[3]) = 0;
    };

}

#endif //D7049E_EVENT_H