#include <iostream>
using namespace std;

class Vehicle{
public:
    Vehicle();
    Vehicle(string vhcl);
    string getType();
private:
    string type;
};
class Brand : public Vehicle {
public:
    Brand();
    Brand(string type, string brnd);
    string getBrand();

private:
    string brand;
};
class Model : public Brand {
public:
    Model();
    Model(string type,string brnd, string mdl, int spd, int prc);
    string getModel();
    int getSpeed() const;
    int getPrice() const;

private:
    string model;
    int speed;
    int price;

};
Vehicle::Vehicle() {
    cout<<"Enter the type of the vehicle: ";
    cin>>type;
}
Vehicle::Vehicle(string  vhcl) : type(vhcl){}
Brand::Brand() {
    cout<<"Enter the brand of the vehicle: ";
    cin>>brand;
}
Brand::Brand(string type,string brnd) : brand(brnd) , Vehicle(type){}
Model::Model() {
    cout<<"Enter the model of the vehicle: ";
    cin>>model;
    cout<<"Enter the max speed of the vehicle: ";
    cin>>speed;
    cout<<"Enter the price of the vehicle: ";
    cin>>price;
}
Model::Model(string type,string brnd, string mdl, int spd, int prc) : model(mdl),speed(spd),price(prc),Brand(type,brnd){}
string Vehicle::getType()
{
    return type;
}
string Brand::getBrand()
{
    return brand;
}
string Model::getModel()
{
    return model;
}

int Model::getSpeed() const
{
    return speed;
}
int Model::getPrice() const
{
    return price;
}


int main() {
    Model m1("super sport","lamborgini","aventador",300,700000);
    cout << "model:" << m1.getModel() << endl;
    cout << "top speed:" << m1.getSpeed() << endl;
    cout << "price:" << m1.getPrice() << endl;
    cout << "brand:" << m1.Brand::getBrand() << endl;
    cout << "vehicle type:" << m1.Vehicle::getType() << endl ;
}
