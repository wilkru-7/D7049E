//
// Created by carol on 2021-05-07.
//

#include "keyboardEvent.h"

void KeyboardEvent::registerObserver(Observer *observer) {
    observers.push_back(observer);
}

void KeyboardEvent::removeObserver(Observer *observer) {
    auto iterator = std::find(observers.begin(), observers.end(), observer);

    if (iterator != observers.end()) { // observer found
        observers.erase(iterator); // remove the observer
    }
}


void KeyboardEvent::checkKeyboardInput(GLFWwindow* window) {
    //move left forward
    if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {

        float newPos[3] = {-0.35f,0.0f,0.35f};
        notifyObservers(newPos);

        //move right forward
    } else if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
        float newPos[3] = {0.35f,0.0f,0.35f};
        notifyObservers(newPos);

        //move left backward
    } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
        float newPos[3] = {-0.35f,0.0f,-0.35f};
        notifyObservers(newPos);

        //move right backward
    } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
        float newPos[3] = {0.35f,0.0f,-0.35f};
        notifyObservers(newPos);

        //move left
    } else if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
        float newPos[3] = {-0.5f,0.0f,0.0f};
        notifyObservers(newPos);

        //move backward
    } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS) {
        float newPos[3] = {0.0f,0.0f,-0.5f};
        notifyObservers(newPos);

        //move right
    } else if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
        float newPos[3] = {0.5f,0.0f,0.0f};
        notifyObservers(newPos);

        // move forward
    } else if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS) {
        float newPos[3] = {0.0f,0.0f,0.5f};
        notifyObservers(newPos);

    }

}

void KeyboardEvent::notifyObservers(float position[3]) {
    for (Observer *observer : observers) { // notify all observers
        observer->update(position);
    }
}