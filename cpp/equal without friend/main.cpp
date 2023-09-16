#include <iostream>
using namespace std;

class Fraction {

public:
    Fraction();
    Fraction(int n);
    Fraction(int n, int d);
    void SetNumerator(int n);
    void SetDenominator(int d);
    int GetNumerator();
    int GetDenominator();
    double ToDecimal();

private:
    int numer;
    int denom;
};


Fraction::Fraction()
{
    numer = 0;
    denom = 1;
}

Fraction::Fraction(int n)
{
    numer = n;
    denom = 1;
}

Fraction::Fraction(int n, int d)
{
    numer = n;
    denom = d;
}

void Fraction::SetNumerator(int n) {
    numer = n; /* notice we are accessing
                private member numer
		here. */

}

void Fraction::SetDenominator(int d) {
    if(d != 0)
        denom = d;
    else
        denom = 1;

}

int Fraction::GetNumerator(){
return numer;
}

int Fraction::GetDenominator(){
return denom;
}



double Fraction::ToDecimal() {
    return (double) numer / denom; /* integer division */
}


bool  Equals(Fraction x, Fraction y)
{
    if ((x.GetNumerator() * y.GetDenominator()) == (y.GetNumerator() * x.GetDenominator()))
        return true;
    else
        return false;
}



int main() {
    Fraction f1(1,2);
    Fraction f2(2,4);

    if (Equals(f1, f2))
        cout<<"The fractions are equal"<<endl;

    Fraction F;

    /* F.numer = 1; */
    F.SetNumerator(1);
    F.SetDenominator(2);

    std::cout<<"Decimal: "<<F.ToDecimal()<<std::endl;

    Fraction A;
    std::cout<<"Decimal: "<<A.ToDecimal()<<std::endl;

    Fraction B(10);
    std::cout<<"Decimal: "<<B.ToDecimal()<<std::endl;

    Fraction C(10, 20);
    std::cout<<"Decimal: "<<C.ToDecimal()<<std::endl;


    return 0;
}

/*bool Equals(Fraction x, Fraction y)
{
    if ((x.SetNumerator())*y.SetDenominator()) == ((y.SetNumerator())x.SetDenominator())
    return true;
    else
    return false;
}
*/