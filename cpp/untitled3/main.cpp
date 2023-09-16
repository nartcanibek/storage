#include <iostream>

using namespace std;
const int MAX = 10;

template< class T >
class SimpleList
{
public:
    SimpleList();
    bool Insert(T item);	// inserts item into list (if room)
    T GetElement(unsigned int n);	// returns element at index n
    void Print();		// prints the list
    int GetSize();		// returns number of elements in list

private:
    T array[MAX];
    int current;		// number of stored items (max is 10)

};

template< class T >
SimpleList< T >::SimpleList()
{
    current = 0;
}

template< class T >
bool SimpleList< T >::Insert(T item)
{
    if (current < MAX)
    {
        array[current] = item;
        current++;
        return true;
    }
    else
        return false;
}

template< class T >
T SimpleList< T >::GetElement(unsigned int n)
{
    if (n >= MAX)
        n = MAX - 1;
    return array[n];
}

template< class T >
void SimpleList< T >::Print()
{
    if (current == 0)
    {	cout << "Empty List";
        return;
    }
    int i;
    for (i = 0; i < current-1; i++)
        cout << array[i] << ' ';
    cout << array[i];
}

template< class T >
int SimpleList< T >::GetSize()
{
    return current;
}

int main()
{
    // create and work with a list of ints
    SimpleList< int > list1;
    for (int i = 0; i < 8; i++)
        list1.Insert(i * 3);		// insert some numbers

    cout << "Element at index 4 = " << list1.GetElement(4) << '\n';
    cout << "Entire list is:\n";
    list1.Print();
    cout << "\n\n";

    // create a list of doubles
    SimpleList< double > list2;
    for (int i = 0; i < 10; i++)
        list2.Insert(i * 1.1);		// insert some doubles

    cout << "Element at index 6 = " << list2.GetElement(6) << '\n';
    cout << "Entire list is:\n";
    list2.Print();
    cout << "\n\n";


    return 0;
}