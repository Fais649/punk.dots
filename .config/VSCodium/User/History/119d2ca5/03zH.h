#ifndef Drawing
#define Drawing

#include <epd_driver.h>

struct Drawing {
protected:
public:
    struct Circle {
    Rect_t rect;
        public:
            void setX(int valX) { rect.x = valX; };
            // int getX() { return pos.getX(); };
            // int getY() { return pos.getY(); };
            Rect_t getRect() {};
    };
    
};

#endif
