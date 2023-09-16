//--------------- FRAC.CPP ---------------
// The class definition for fractions.
//

#include <iostream>
#include "frac.h"

using namespace std;

// friend functions

bool Equals(Fraction x, Fraction y)
{
    return (x.numerator * y.denominator == y.numerator * x.denominator);
}

Fraction Add(Fraction x, Fraction y)
{
    int num = x.numerator*y.denominator + y.numerator*x.denominator;
    int denom = x.denominator * y.denominator;

    Fraction answer(num, denom);		// create the answer Fraction
    return answer;

    // could also do this, instead of the above two lines:
    //
    // return Fraction(num, denom);	// construct fraction and return
}

// member functions

Fraction::Fraction()
// Default constructor.  Initializes fraction to 0/1
{
    cout << "Running default constructor" << endl;
    numerator = 0;
    denominator = 1;
}

Fraction::Fraction(int n, int d)
// initializes fraction to n/d
// validation of input added in
{
    cout << "Running parameterized constructor (ints)" << endl;

    if (SetValue(n,d) == false)
        SetValue(0,1);
}

Fraction::Fraction(double d)
// dummy definition -- NOT trying to convert d to an equivalent fraction
//  in this example
{
    numerator = static_cast<int>(d);
    denominator = 1;
}

void Fraction::Input()
// Get a fraction from standard input, in the form "numerator/denominator."
// Input validation added in
{
    char divSign;	// used to consume the '/' character during input

    do
    {
        cin >> numerator >> divSign >> denominator;
        if (denominator == 0)
            cout << "Bad Fraction.  Try again: ";

    } while (denominator == 0);
}

void Fraction::Show()
// Display a fraction, in the form "numerator/denominator."
{
    cout << numerator << '/' << denominator;
}

int Fraction::GetNumerator()
{
    return numerator;
}

int Fraction::GetDenominator()
{
    return denominator;
}

bool Fraction::SetValue(int n, int d)
// set the Fraction to n/d (unless d is 0)
//  return true for success and false for failure
{
    if (d == 0)			/// Houston we have a problem
        return false;
    else				// good case
    {
        numerator = n;
        denominator = d;
        return true;
    }
}


double Fraction::Evaluate()
// Calculates and returns the decimal value of a fraction
{
    double n = numerator;	// convert numerator to double
    double d = denominator;	// convert denominator to double
    return (n / d);		// compute and return float representation
}