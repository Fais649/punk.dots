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
        Position getPosition();
        private:
        struct Position pos;
    };
    
};

#endif