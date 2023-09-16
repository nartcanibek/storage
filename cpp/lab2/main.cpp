// Clion 2020.3.1 x64 kullandım
#include <iostream>
using namespace std;

class Student{

    friend Student CompareStudents(const Student &S1,const Student &S2);

public:

    Student();
    Student(int number,double midterm,double final);
    ~Student();


    int GetStudentNumber() const;
    double GetMidtermGrade() const;
    double GetFinalGrade() const;

    double YearEndGrade() const;


private:

    int const studentnumber;
    double const midtermgrade;
    double const finalgrade;

};
Student CompareStudents(const Student &S1,const Student &S2)
{
    if (S1.YearEndGrade() > S2.YearEndGrade())
        return S1;
    else if (S1.YearEndGrade() < S2.YearEndGrade())
        return S2;
    else {
        if (S1.GetFinalGrade() > S2.GetFinalGrade())
            return S1;
        else if (S1.GetFinalGrade() < S2.GetFinalGrade())
            return S2;
        else
            return S1;
    }
}
Student::Student() : studentnumber (0.0), midtermgrade(0.0), finalgrade(0.0)
{

}
Student::Student(int number,double midterm,double final) : studentnumber(number), midtermgrade(midterm), finalgrade(final)
{

}
Student::~Student()
{

}

int Student::GetStudentNumber() const
{
    return studentnumber;
}
double Student::GetMidtermGrade() const
{
    return midtermgrade;
}
double Student::GetFinalGrade() const
{
    return finalgrade;
}
double Student::YearEndGrade() const{

    return (midtermgrade*4.0+finalgrade*6.0)/10.0;
}



int main() {

    Student S1(191201033,40.5,40.5);
    cout << S1.GetStudentNumber() << endl << S1.GetMidtermGrade() << endl << S1.GetFinalGrade() << endl;
    Student S2(191201034,40.5,40.4);
    cout <<"yearends:"<<endl<< S1.YearEndGrade() << endl << S2.YearEndGrade() << endl;
    Student S3 = CompareStudents(S1,S2);
    cout <<"compare:"<<endl<< S3.GetStudentNumber() << endl;
    Student S4;
    cout <<"new student:"<<endl<< S4.GetStudentNumber() << endl << S4.GetMidtermGrade() << endl << S4.GetFinalGrade() << endl;

    return 0;
}
