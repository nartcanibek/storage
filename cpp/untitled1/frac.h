#include <iostream>

class Fraction {

    friend bool Equals(Fraction x, Fraction y);
    friend Fraction Add(Fraction x,Fraction y);

public:
    Fraction();
    Fraction (int n,int d=1);

    void Input();
    void Show();

    int GetNumerator();
    int GetDenominator();

    bool SetValue(int n,int d);

    double Evaluate();

private:
    int numerator;
    int denominator;
};