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
    };

public:
    struct Circle {
        public:
            Position getPosition() { return pos; };
            void setPositionX(int valX) { pos.setX(valX); };
            void setPositionY(int valY) { pos.setY(valY); };
        private:
            struct Position pos;
    };
    
};

#endif