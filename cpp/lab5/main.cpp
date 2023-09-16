#include <iostream>
//Clion 2020.3.1 x64 kullandım.
using namespace std;
int fibonacci(int n)
{
    if (n==1||n==2) return 1;
    return fibonacci(n-1) + fibonacci(n-2);
}
int greatestCommonDivisor(int firstNumber, int secondNumber)
{
    if (firstNumber-secondNumber<=secondNumber) {
        int temp;
        for (int x = 1; x <= secondNumber; x++) {
            if (firstNumber % x == 0 and secondNumber % x == 0)
                temp = x;
        }
        return temp;
    }
    return greatestCommonDivisor(firstNumber-secondNumber,secondNumber);
}
void checkPalindrome(char word[], int index, int length)
{

    if(index==length){
        cout << "This word is a palindrome" <<endl;
    return;}

    else if(word[index] != word[length-index-1]){
            cout << "This word is not a palindrome" <<endl;
            return ;}


    return checkPalindrome(word,index+1,length);

}
void printSumTriangle(int A[] , int n){
    if (n==0)
        return;
    int temparray[n-1];
    for (int x = 0;x < n-1 ;x++){
        temparray[x]=A[x]+A[x+1];}
    for (int x = 0;x < n-1;x++){
        cout << temparray[x] << " ";
    }
    cout << endl;
    for (int x = 0;x < n-1 ;x++){
        A[x]=temparray[x];}
    return printSumTriangle(A,n-1);
}
int main() {
    int a = fibonacci(6);
    cout << a << endl;
    int b = greatestCommonDivisor(18,12);
    cout << b << endl;
    char word[]="saippuakivikauppias"; //array length 19
    checkPalindrome(word, 0, 19);
    int A[] = {1, 2, 3, 4, 5};
    printSumTriangle(A,5);


    return 0;
}
