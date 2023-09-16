#include "frac.h"
#include <iostream>

using namespace std;

bool Equals(Fraction x,Fraction y)
{
    return (x.numerator*y.denominator==y.numerator*x.denominator);
}
Fraction Add(Fraction x,Fraction y)
{
    int num = x.numerator*y.denominator + y.numerator*x.denominator;
    int denom = x.denominator*y.denominator;

    return Fraction(num,denom);
}

Fraction::Fraction()
{
    int numerator=0;
    int denominator=1;
}
Fraction::Fraction(int n,int d)
{
if(SetValue(0,0)==false)
    SetValue(0,1);
}
void Input()
{
    char divSign;	// used to consume the '/' character during input

    do
    {
        cin >> numerator >> divSign >> denominator;
        if (denominator == 0)
            cout << "Bad Fraction.  Try again: ";

    } while (denominator == 0);
}