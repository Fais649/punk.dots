#ifndef DRAWING_H
#define DRAWING_H

class Drawing {
public:
    Drawing();
    ~Drawing();
    virtual void draw() = 0;
};

#endif