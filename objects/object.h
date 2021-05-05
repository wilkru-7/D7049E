//
// Created by Wilma on 05/05/2021.
//

#pragma once

class Object {
public:
    virtual void init(float position[3]) = 0;
    virtual void shutdown() = 0;
    virtual void reflectSubmit() = 0;
    virtual void drawSubmit() = 0;
};
