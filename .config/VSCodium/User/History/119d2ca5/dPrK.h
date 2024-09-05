#ifndef Drawing
#define Drawing

struct Drawing {

enum Shape {
    Circle,
    Rect,
};

struct Position {
    int x;
    int y;

    void setX(int valX){
        x = valX;
    };

    void setY(int valY){
        y = valY;
    };
};

};

#endif