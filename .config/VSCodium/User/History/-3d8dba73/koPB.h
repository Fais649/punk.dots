#ifndef VISUAL_H
#define VISUAL_H
#include <iostream>
#include "epd_driver.h"
#include <Arduino.h>

class Visual {
public:
	Visual();
private:
	virtual void rect() = 0;

};

#endif
