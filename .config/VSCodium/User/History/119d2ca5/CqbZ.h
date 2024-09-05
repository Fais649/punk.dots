#ifndef Drawing
#define Drawing

#include <epd_driver.h>

struct Drawing {
private:
    struct Position {
        int x;
        int y;

        void setX(int valX){
            x = valX;
        };

        void setY(int valY){
            y = valY;
        };

        int getX() { return x; };
        int getY() { return y; };
    };

public:
    struct Circle {
        public:
            void setX(int valX) { pos.setX(valX); };
            void setY(int valY) { pos.setY(valY); };
            int getX() { return pos.getX(); };
            int getY() { return pos.getY(); };
            Rect_t getRect() {};

        private:
            Position pos;
    };
    
};

#endif
