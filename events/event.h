//
// Abstract class to be inherited by events occurring in the game.
// Code based on this article: https://medium.com/@gayashanbc/explore-the-observer-design-pattern-with-c-8592459b0486
//

#ifndef D7049E_EVENT_H
#define D7049E_EVENT_H

#include <vector>
#include "../observer/observer.h"

namespace {
    class Event  {
    public:

        virtual int id() = 0; //each event should have unique id

        void registerObserver(Observer *observer) {
            observers.push_back(observer); // add an observer
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