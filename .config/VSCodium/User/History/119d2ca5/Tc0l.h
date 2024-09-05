#ifndef Drawing
#define Drawing

#include <epd_driver.h>

struct Drawing {
private:
    Rect_t rect;
public:
    struct Circle {
        public:
            void setX(int valX) { rect.x = valX; };
            void setY(int valY) { pos.setY(valY); };
            int getX() { return pos.getX(); };
            int getY() { return pos.getY(); };
            Rect_t getRect() {};

        private:
            Position pos;
    };
    
};

#endif
