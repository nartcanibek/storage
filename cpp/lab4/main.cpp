//Clion 2020.3.1 x64 kullandım.
#include <iostream>
using namespace std;
int minimum(int *array, int size)
{
    int temp;
    temp = array[0];
    for (int x=0;x<size;++x)
    {
        if (array[x] < temp)
            temp = array[x];
    }
return temp;
}
void swapTimesX(int *xptr, int *yptr, int x){

    *xptr = x * *xptr;
    *yptr = x * *yptr;

    int temp = *xptr;

    *xptr = *yptr;
    *yptr = temp;
}
int *doubleArray(int *array, int size)
{
    if (size>0)
    {
        int *temparray = new int[2 * size];

        for (int x=0;x<size;++x)
            temparray[x] = array[x];

        for (int x=size;x< 2 * size;++x)
            temparray[x] = 2 * array[x-size];

        return temparray;
    }
    else {
        cout << "Size CAN NOT be negative!";
        return nullptr;
    }

}
int *subArray(int *array, int start, int length){

    if (start>0 && length >>0)
    {
        int *temparray = new int[length];


        for (int x=0;x < length;++x)
            temparray[x] = array[x+start];

        return temparray;
    }
    else {
        cout << "Start or length CAN NOT be negative!";
        return nullptr;
    }
}
int main() {

    int dizi[4]={4,3,2,1};
    cout<<minimum(dizi,4)<<endl ;

    int x=5;
    int y=6;

    int *ptr1 = &x;
    int *ptr2 = &y;

    swapTimesX(ptr1,ptr2,3);

    cout<<*ptr1<<endl<<*ptr2<<endl;

    int *arrayptr = doubleArray(dizi,4);

    int *arrayptr2 = subArray(dizi,2,2);


    for (int a=0;a <8;++a)
        cout<<arrayptr[a]<<endl;


    cout<<"birin sonu"<<endl;

    for(int a=0;a<2;++a)
        cout<<arrayptr2[a]<<endl;


delete arrayptr;
delete arrayptr2;

}
