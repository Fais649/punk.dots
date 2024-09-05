#ifndef VISUAL_H
#define VISUAL_H
#include <iostream>
#include "epd_driver.h"
#include <Arduino.h>

class Visual {
public:
	Visual();
private:
	virtual void rect(int posX, int posY, int width, int height, bool filled) = 0;

};

#endif
