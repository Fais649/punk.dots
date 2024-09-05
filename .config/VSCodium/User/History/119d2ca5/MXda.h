#ifndef Drawing
#define Drawing

#include <epd_driver.h>

struct Drawing {
private:
    Rect_t area = {.x = 0, .y = 0, .width = EPD_WIDTH, .height = EPD_HEIGHT};
    Rect_t rect;
public:
    struct Circle {
        public:
            void setX(int valX) { area.x = valX; };
            void setY(int valY) { pos.setY(valY); };
            // int getX() { return pos.getX(); };
            // int getY() { return pos.getY(); };
            Rect_t getRect() {};
    };
    
};

#endif
