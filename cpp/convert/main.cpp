// driver.cpp
// Bob Myers
//
// Test the conversion constructor

#include <iostream>		// for cout
#include "frac.h"		// for Fraction declarations

using namespace std;

int main()
{
    Fraction f1, f2, f3, f4;

    f1 = 5;			// uses conversion constructor
    f2 = Fraction(6);		// explicit use of constructor
    f3.SetValue(3,8);		// set f3 to 3/8

    f4 = Add(f3, 10);		// uses conversion constructor on 10
    // The above call is equivalent to:
    // 	f4 = Add(f3, Fraction(10));

    cout << "\nf1 = ";
    f1.Show();
    cout << "\nf2 = ";
    f2.Show();
    cout << "\nf3 = ";
    f3.Show();
    cout << "\nf4 = ";
    f4.Show();

    // Try the "explicit" constructor

    f1 = 5.6;			// this will NOT work
    //  since Fraction(double); is "explicit"
    cout << "\nf1 = ";
    f1.Show();
    f1 = Fraction(5.6);		// this WILL work (explicit constructor call)

    cout << "\nf1 = ";
    f1.Show();
    return 0;
}
