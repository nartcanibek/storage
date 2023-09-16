#include <iostream>
#define PI 3.1415926535897
using namespace std;
class Shape {

public:
    Shape();
    Shape(const Shape &Shp);
    void setX(int x);
    void setY(int y);
    int getX() const;
    int getY() const;
    void enterValues();
    int getPerimeter() const;
private:
    int center_coordinate_x;
    int center_coordinate_y;
protected:
    int segment;
};
class Square : Shape{
public:
    Square(const Square &Sqr);
    double getArea() const;
    int getPerimeter() const;
};
class Rectangle : Shape{
public:
    Rectangle(const Rectangle &Rct);
    double getArea() const;
    int getPerimeter() const;

protected:
    int height;
};
class Circle : Shape{
public:
    Circle(const Circle &Crl);
    double getArea() const;
    double getPerimeter() const;

};
//------------------------------
int Shape::getX(void) const
{
    return center_coordinate_x;
}

int Shape::getY(void) const
{
    return center_coordinate_y;
}

int Shape::getPerimeter() const
{
    return segment;
}

void Shape::setX(int x)
{
    this->center_coordinate_x = x;
}

void Shape::setY(int y)
{
    this->center_coordinate_y = y;
}

Shape::Shape(const Shape &Shp){
    this->center_coordinate_x = Shp.center_coordinate_x;
    this->center_coordinate_y = Shp.center_coordinate_y;
    this->segment = Shp.segment;
}
void Shape::enterValues(){
    cout << "Enter center_x";
    cin >> center_coordinate_x;
    cout << "Enter center_y";
    cin >> center_coordinate_y;
    cout << "Enter length of segment";
    cin >> segment;
}
//-----------------------------------------------------

Square::Square(const Square &Sqr){

}
double Square::getArea() const {
    return segment*segment;
}
int Square::getPerimeter() const{
    return segment*4;

}
Rectangle::Rectangle(const Rectangle &Rct){

}
double Rectangle::getArea() const {
    return segment*height*0.5;
}
int Rectangle::getPerimeter() const{
    return segment*3;
}
Circle::Circle(const Circle &Crl){

}
double Circle::getArea() const {
    return PI*segment*segment;
}
double Circle::getPerimeter() const{
    return segment*2*PI;

}
int main() {
    std::cout << "Hello, World!" << std::endl;
    return 0;
}
