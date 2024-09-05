#ifndef LAYER_H
#define LAYER_H
#include <vector>

enum Shape {
    Circle,
    Rect,
}

class Layer {
std::vector<Drawing> drawings;

public:
    virtual int getPosZ() = 0;
    virtual void addDrawing() = 0;
private:
};

#endif