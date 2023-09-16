#include <iostream>
using namespace std;
class student {
private:
    int studentnumber;
    int labgrade[6];
    int midtermgrade;
    int finalgrade;
public:
    void gettersetter(int n, int a, int b, int c, int d, int e, int f, int g, int h);
    double averagelabgrade();
    double yearendgrade();
};
void student::gettersetter(int n, int a, int b, int c, int d, int e, int f, int g, int h) {
    studentnumber = n;
    labgrade[0] = a;
    labgrade[1] = b;
    labgrade[2] = c;
    labgrade[3] = d;
    labgrade[4] = e;
    labgrade[5] = f;
    midtermgrade = g;
    finalgrade = h;
}
double student::averagelabgrade(){
    double sum ;
    for (int x=0;x<6;x++){
        sum=sum+labgrade[x];
    }
return sum/6.0;
}
double student::yearendgrade() {

    double resultyearandgrade=averagelabgrade()*25/100+midtermgrade*35/100+finalgrade*40/100;

    return resultyearandgrade;
}
void comparer(double grade1,double grade2){
    if(grade1<grade2)
    {std::cout<< "Student2 is better" << std::endl;}
    else
    {std::cout<< "Student1 is better" << std::endl;}
}

int main()
{
    student student1;

    student1.gettersetter(1,20,60,100,70,60,40,70,80);
    //std::cout << student1.averagelabgrade() << std::endl;
    double grade1=student1.yearendgrade();


    student student2;

    student2.gettersetter(2,50,60,30,60,90,80,80,100);

    double grade2=student2.yearendgrade();

    comparer(grade1,grade2);
}