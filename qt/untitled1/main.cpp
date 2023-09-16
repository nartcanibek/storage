#include <iostream>

using namespace std;

void asalkontrol (int girdi)
{

   for (int bolen = 2; bolen < girdi; bolen ++)
   {
       if(girdi % bolen == 0){
           cout << 0 << endl;
           break;

        }
    }
   cout << 1 << endl;



}
int main()
{
    int a;
    cin >>  a  ;

   asalkontrol(a);

   cin >> a ;

    return 0;
}
