//
// Created by carol on 2021-05-07.
//

#include "keyboardEvent.h"
#include <iostream>
void KeyboardEvent::checkKeyboardInput(GLFWwindow* window) {
    //move left forward
    if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
        notifyObservers(11);
    //move right forward
    } else if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
        notifyObservers(12);
        //move left backward
    } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
        notifyObservers(13);
        //move right backward
    } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS && glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
        notifyObservers(14);
        //move left
    } else if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS) {
        notifyObservers(15);
        //move backward
    } else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS) {
        notifyObservers(16);
        //move right
    } else if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS) {
        notifyObservers(17);
        // move forward
    } else if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS) {
        notifyObservers(18);
    } else if (glfwGetKey(window, GLFW_KEY_SPACE) == GLFW_PRESS) {
        notifyObservers(19);
    }else {
        notifyObservers(id());
    }
}
void KeyboardEvent::key_callback(int key, int action)
{
    if (key == GLFW_KEY_E && action == GLFW_PRESS){
        notifyObservers(110);
    } else if (key == GLFW_KEY_1 && action == GLFW_PRESS){
        notifyObservers(111);
    } else if (key == GLFW_KEY_2 && action == GLFW_PRESS){
        notifyObservers(112);
    } else if (key == GLFW_KEY_3 && action == GLFW_PRESS){
        notifyObservers(113);
    } else if (key == GLFW_KEY_4 && action == GLFW_PRESS){
        notifyObservers(114);
    }
}
