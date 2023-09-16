// Clion 2020.3.1 x64 kullandım
#include <iostream>
using namespace std;

class Student{

    friend Student CompareStudents(Student S1, Student S2);

public:

    Student(int number,int midterm,int final);
    ~Student();


    int GetStudentNumber();
    void SetStudentNumber(int number);

    int GetMidtermGrade();
    void SetMidtermGrade(int midterm);

    int GetFinalGrade();
    void  SetFinalGrade(int final);

    double YearEndGrade();


private:

    int studentnumber;
    int midtermgrade;
    int finalgrade;

};
Student CompareStudents(Student S1, Student S2)
{
if (S1.YearEndGrade() > S2.YearEndGrade())
    return S1;
else if (S1.YearEndGrade() < S2.YearEndGrade())
    return S2;
else
    cout<<"These students are even."<<endl;

}
Student::Student(int a,int b,int c)
{
   SetStudentNumber(a);
   SetMidtermGrade(b);
   SetFinalGrade(c);
}
Student::~Student() {
    cout<<"Destructor running"<< endl;
}

int Student::GetStudentNumber()
{
    return studentnumber;
}
void Student::SetStudentNumber(int number)
{
    if (number<0) {
        cout<<"Wrong type of student number.";
        studentnumber = 0;
    }
    studentnumber=number;
}
int Student::GetMidtermGrade()
{
    return midtermgrade;
}
void Student::SetMidtermGrade(int midterm)
{
    if (midterm<0) {
        cout<<"Wrong type of midterm grade.";
        midtermgrade = 0;
    }
    midtermgrade=midterm;
}
int Student::GetFinalGrade()
{
    return finalgrade;
}
void Student::SetFinalGrade(int final)
{
    if (final<0) {
        cout<<"Wrong type of final grade.";
        finalgrade = 0;
    }
    finalgrade=final;
}
double Student::YearEndGrade() {

    return ((double)midtermgrade*4.0+(double)finalgrade*6.0)/10.0;
}



int main() {

    Student S1(191201033,40,40);
    cout << S1.GetStudentNumber() << endl << S1.GetMidtermGrade() << endl << S1.GetFinalGrade() << endl;
    Student S2(191201034,30,40);
    cout << S1.YearEndGrade() << endl << S2.YearEndGrade() << endl;
    Student S3 = CompareStudents(S1,S2);
    cout << S3.GetStudentNumber() << endl;

    return 0;
}
