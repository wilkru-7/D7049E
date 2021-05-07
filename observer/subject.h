//
// Created by carol on 2021-05-07.
//

#ifndef D7049E_SUBJECT_H
#define D7049E_SUBJECT_H

#include <vector>
#include "observer.h"

namespace {
    class Subject {

    public:

        virtual void registerObserver(Observer *observer) = 0;

        virtual void removeObserver(Observer *observer) = 0;

        virtual void notifyObservers(float position[3]) = 0;

    };
}



#endif //D7049E_SUBJECT_H