/*//
// Created by nartc on 2.02.2021.
//

#ifndef CONVERT_FRAC_H
#define CONVERT_FRAC_H


class frac {

};


#endif //CONVERT_FRAC_H
*/
//--------------- FRAC.H ---------------

class Fraction
{
    friend bool Equals(Fraction x, Fraction y);
    friend Fraction Add(Fraction x, Fraction y);

public:
    Fraction();			// Set numerator = 0, denominator = 1.
    Fraction(int n, int d=1);	// constructor with parameters
    // also acts as conversion constructor
    //  from int to Fraction

    explicit Fraction(double d);	// no automatic conversions from double to
    //  Fraction

    // standard input/output routines
    void Input();		// input a fraction from keyboard.
    void Show();			// Display a fraction on screen

    // accessors
    int GetNumerator();
    int GetDenominator();

    // mutator
    bool SetValue(int n, int d); // set the fraction's value through parameters

    double Evaluate();		// Return the decimal value of a fraction

private:
    int numerator;		// top part (any integer)
    int denominator;		// denom must be non-zero
};

