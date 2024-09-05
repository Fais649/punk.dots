#ifndef Drawing
#define Drawing

#include <epd_driver.h>

struct Drawing {
private:
    // Default area for the entire screen
    Rect_t area = {.x = 0, .y = 0, .width = EPD_WIDTH, .height = EPD_HEIGHT};
    Rect_t rect;

public:
    // Provide a public getter to access area if needed
    Rect_t getArea() { return area; }
    
    // Circle structure
    struct Circle {
    public:
        // Set X value for the area in the parent Drawing structure
        void setX(int valX, Drawing &drawing) { drawing.area.x = valX; }
        
        // Set Y value for the area in the parent Drawing structure
        void setY(int valY, Drawing &drawing) { drawing.area.y = valY; }
        
        // Return the Rect object (example implementation)
        Rect_t getRect(Drawing &drawing) {
            return drawing.area;
        }
    };
};

#endif
