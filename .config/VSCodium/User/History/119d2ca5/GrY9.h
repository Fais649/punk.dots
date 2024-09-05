#ifndef Drawing
#define Drawing

#include <epd_driver.h>

struct Drawing {
protected:
public:
    struct Circle {
    uint8_t framebuffer;
    Rect_t rect;
        public:
            void setX(int valX) { rect.x = valX; };
            // int getX() { return pos.getX(); };
            // int getY() { return pos.getY(); };
            Rect_t getRect() {};
            void drawCircle() {

                epd_poweron();
                epd_draw_circle();
                epd_draw_image()
                epd_poweroff();
            };
    };
    
};

#endif
