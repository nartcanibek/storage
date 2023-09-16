#include <iostream>
// ALt insert getter setter
//Clion Compiler kullanıldı
using namespace std;
//Creating class and Declaration.
class Student{
    //Creating CompareStudents friend function with pass by const referance.
    friend void CompareStudents(const Student& x,const Student& y);
public:
    Student();//creating a constructor.
    Student(int a,int b,int c);//crating a constructor with Student Number, MidtermGrade and FinalGrade
    //Creating member fields as const.
    const int getStudentNo() const;
    const int getMidtermgrade() const;
    const int getFinalgrade() const;
    int ComputeYearEndGrade () const;

    ~Student();//Creating the Destructor.
private:
    const int StudentNo;
    const int Midtermgrade;
    const int Finalgrade;
};
//Creating the Getters.
const int Student::getStudentNo() const {
    return StudentNo;
}
const int Student::getMidtermgrade() const {
    return Midtermgrade;
}
const int Student::getFinalgrade() const {
    return Finalgrade;
}

//ComputeYearEndGrade Function.
int Student::ComputeYearEndGrade() const {
    return (Midtermgrade*4)/10+(Finalgrade*6)/10;
}

//CompareStudents Function.
void CompareStudents(const Student& x,const Student& y){
    if(x.ComputeYearEndGrade()>y.ComputeYearEndGrade()){
        cout << "Student 1 has better grades.";
    }
    else if (x.ComputeYearEndGrade()<y.ComputeYearEndGrade()){
        cout << "Student 2 has better grades.";
    }
    else{
        if(x.getFinalgrade()<y.getFinalgrade()){
            cout<<"Student 2 has better grades.";
        }
        else if(x.getFinalgrade()>y.getFinalgrade()) {
            cout << "Student 1 has better grades.";
        }
        else{
            cout<<"Student's are equal.";
        }
    }
}


//Creating a constructor which takes no input and equal all member fields to 0.
Student::Student():StudentNo(0),Midtermgrade(0),Finalgrade(0){
}
//Creating a constructor which takes all 3 member fields as const input.
Student::Student(int a,int b,int c):StudentNo(a),Midtermgrade(b),Finalgrade(c){
}
//Destructor.
Student::~Student(){}

int main(){
    Student S1;
    Student S2(142,50,50);
    CompareStudents(S1,S2);
}