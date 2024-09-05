#ifndef BACKGROUND_H
#define BACKGROUND_H

#include <epd_driver.h>
#include "layer.h"

class Background : public Layer
{
public:
    Background();
    ~Background();
    int getPosZ() override;
private:
};

#endif