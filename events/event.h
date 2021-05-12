//
// Created by Wilma on 07/05/2021.
//

#ifndef D7049E_EVENT_H
#define D7049E_EVENT_H

//#include "../observer/subject.h"
#include <vector>
#include "../observer/observer.h"
namespace {
    class Event  {
    public:
        virtual int id() = 0;

        void registerObserver(Observer *observer) {
            observers.push_back(observer);
        };

        void removeObserver(Observer *observer) {
            auto iterator = std::find(observers.begin(), observers.end(), observer);

            if (iterator != observers.end()) { // observer found
                observers.erase(iterator); // remove the observer
            }
        };

        void notifyObservers(int id) {
            for (Observer *observer : observers) { // notify all observers
                observer->update(id);
            }
        };

        std::vector<Observer *> observers;
    };

}

#endif //D7049E_EVENT_H