//--------------- FRAC.CPP ---------------
// The class definition for fractions.
//

#include <iostream>
#include "frac.h"

using namespace std;

// new member functions

bool Fraction::Equals(Fraction f)
{
    return (numerator * f.denominator == f.numerator * denominator);
}

Fraction Fraction::Add(Fraction f)
{
    int num = numerator * f.denominator + f.numerator * denominator;
    int denom = denominator * f.denominator;

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
    numerator = 0;
    denominator = 1;
}

Fraction::Fraction(int n, int d)
// initializes fraction to n/d
// validation of input added in
{
    if (SetValue(n,d) == false)
        SetValue(0,1);
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

// driver.cpp
// Bob Myers
//
// Test the Add and Equals functions

/*#include <iostream>		// for cout
#include "frac.h"		// for Fraction declarations*/

using namespace std;

int main()
{
    Fraction f1, f2, f3, f4;
    cout << "Enter fraction f1: ";
    f1.Input();
    cout << "Enter fraction f2: ";
    f2.Input();

    cout << "\nf1 = ";
    f1.Show();
    cout << "\nf2 = ";
    f2.Show();

    cout << "\n\n";

    if (f1.Equals(f2))
        cout << "f1 and f2 are equal\n";
    else
        cout << "f1 and f2 are NOT equal\n";

    f3 = f1.Add(f2);
    cout << "f1 + f2 = ";
    f3.Show();
    cout << '\n';

    return 0;
}
