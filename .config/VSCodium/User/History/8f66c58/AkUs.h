#ifndef LAYER_H
#define LAYER_H
#include <
class Layer {

public:
    virtual int getPosZ() = 0;
    virtual void addDrawing() = 0;
private:
};

#endif