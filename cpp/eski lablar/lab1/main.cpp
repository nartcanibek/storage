#include <iostream>
class Fraction{
public:
    void SetNumerator(int n);
    void SetDenomerator(int d);
    double ToDecimal();
    double GetInverse();
private:
    int numer;
    int denom;

};
void Fraction::SetNumerator(int n) {
    numer = n;
}
void Fraction::SetDenomerator(int d) {
    if (d!=0)
    denom=d;
    else
        denom=1;
}
double Fraction::ToDecimal() {
    return (double) numer/denom;
}
double Fraction::GetInverse(){
    return (double) denom/numer;

}
int main()
{
	Fraction F;
    F.SetNumerator(1);
    F.SetDenomerator(4);
	std::cout << F.ToDecimal() << std::endl;
	std::cout << F.GetInverse() << std::endl;
	F.SetDenomerator(5);
	F.SetNumerator(2);
	std::cout << F.ToDecimal() << std::endl;
	std::cout << F.GetInverse() << std::endl;
	return 0;
}
