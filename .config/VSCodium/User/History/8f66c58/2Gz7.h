#ifndef LAYERS_H
#define LAYERS_H

#include <background.h>

class Layer {
public:
    virtual int getPosZ() = 0;
private:
};

#endif