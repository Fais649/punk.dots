#ifndef Drawing
#define Drawing

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
            Position getPosition() { return pos; };
            void setPositionX(int valX) { pos.setX(valX); };
            void setPositionY(int valY) { pos.setY(valY); };
            int getX() { return pos.getX(); };
            int getY() { return pos.getY(); };
        private:
            struct Position pos;
    };
    
};

#endif