//Clion 2020.3.1 x64 kullandım
#include <iostream>
using namespace std;

class Point {
    public:

        Point();
        Point(int x,int y);

        int GetCoordinate_x() const;
        int GetCoordinate_y() const;

        void SetCoordinate_x(int alt_x);
        void SetCoordinate_y(int alt_y);

    private:

        int coordinate_x;
        int coordinate_y;
};
class LineSegment{

    friend ostream& operator<<(ostream& os,const LineSegment &outline);

    public:

        LineSegment();
        LineSegment(int a,int b,int c,int d);

        void SetFirstPoint(int alt_x_1,int alt_y_1);
        void SetSecondPoint(int alt_x_2,int alt_y_2);

        LineSegment operator+(const LineSegment &line) const;


        Point p1;
        Point p2;
};
Point::Point() : coordinate_x(0),coordinate_y(0) {

}

Point::Point(int x, int y) : coordinate_x(x),coordinate_y(y) {

}

int Point::GetCoordinate_x() const{
    return coordinate_x;
}
int Point::GetCoordinate_y() const{
    return coordinate_y;
}
void Point::SetCoordinate_x(int alt_x){
    coordinate_x = alt_x;
}
void Point::SetCoordinate_y(int alt_y){
    coordinate_y = alt_y;
}

LineSegment::LineSegment() : p1(),p2() {

}

LineSegment::LineSegment(int a, int b, int c, int d) : p1(a,b) , p2(c,d) {

}
void LineSegment::SetFirstPoint(int alt_x_1, int alt_y_1) {
    p1.SetCoordinate_x(alt_x_1);
    p1.SetCoordinate_y(alt_y_1);
}
void LineSegment::SetSecondPoint(int alt_x_2, int alt_y_2) {
    p2.SetCoordinate_x(alt_x_2);
    p2.SetCoordinate_y(alt_y_2);
}
LineSegment LineSegment::operator+(const LineSegment &line) const {
    LineSegment temp;
    temp.p1.SetCoordinate_x(p1.GetCoordinate_x()+line.p1.GetCoordinate_x());
    temp.p1.SetCoordinate_y(p1.GetCoordinate_y()+line.p1.GetCoordinate_y());
    temp.p2.SetCoordinate_x(p2.GetCoordinate_x()+line.p2.GetCoordinate_x());
    temp.p2.SetCoordinate_y(p2.GetCoordinate_y()+line.p2.GetCoordinate_y());
    return temp;
}
ostream& operator<<(ostream& os,const LineSegment &outline){
    os<<"("<<outline.p1.GetCoordinate_x()<<","<<outline.p1.GetCoordinate_y()<<")--("<<outline.p2.GetCoordinate_x()<<","<<outline.p2.GetCoordinate_y()<<")"<<endl;
    return os;
}
int main() {
    LineSegment s1(5,2,3,4);
    LineSegment s2(4,5,6,7);
    LineSegment s3 = s1.operator+(s2);
    cout<<s3<<endl;
    LineSegment s4;
    cout<<s4<<endl;
    LineSegment s5;
    s5.SetFirstPoint(5,6);
    s5.SetSecondPoint(7,8);
    cout<<s5<<endl;
    LineSegment s6 = s5.operator+(s4);
    cout<<s6;

    return 0;
}
