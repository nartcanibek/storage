#include <iostream>
#include <stdio.h>

using namespace std;

void MyIncrement(int & x)
{
    x++;
}

int main() {
    int MyInt = 4;

    MyIncrement(MyInt);

    cout << MyInt << "\n";

    return 0;
/*int Val=5;
    GraphNode *ValPtr;
    cout<<"ValPtr = "<<ValPtr<<endl;
    cout<<"&ValPtr = "<<&ValPtr<<endl;

    ValPtr = &n1;
    cout<<"*ValPtr = "<<ValPtr<<endl;
    cout<<"*ValPtr = "<<&ValPtr<<endl;
    *ValPtr=10;
    cout<<"Val = "<<ValPtr<<endl;
    cout<<"&Val = "<<&ValPtr<<endl;

    */

/*GraphNode n1(1),n2(2),n3(3);

    GraphNode *graphptr;
    graphptr = &n2;
    cout<<graphptr<<endl;
    GraphNode *graphptrr;
    graphptrr = &n3;
    cout<<graphptrr<<endl;


    if (n1.setNeighborNode(n2))
        cout<<"true"<<endl;

    else if (!n1.setNeighborNode(n2))
        cout<<"false"<<endl;

    cout<<"end of first"<<endl;

   if (n1.setNeighborNode(n3))
       cout<<"true"<<endl;

   else if (!n1.setNeighborNode(n3))
        cout<<"false"<<endl;

    cout<<"end of second"<<endl;

    if (n1.setNeighborNode(n2))
        cout<<"true"<<endl;

    else if (!n1.setNeighborNode(n2))
        cout<<"false"<<endl;

    cout<<"end of repeated first"<<endl;

    if (n1.deleteNeighborNode(n2))
        cout<<"true"<<endl;

    else if (!n1.deleteNeighborNode(n2))
        cout<<"false"<<endl;

    cout<<"end of delete"<<endl;

    if (n1.deleteNeighborNode(n2))
        cout<<"true"<<endl;

    else if (!n1.deleteNeighborNode(n2))
        cout<<"false"<<endl;

    cout<<"end of delete2"<<endl;

    n1.showptr();

    //n4 = n1.getNeighborAtIndex(2);

    cout<<n1.getNeighborAtIndex(1)<<endl;
    GraphNode* n4;
    n4 = (n1.getNeighborAtIndex(1));
    cout<<(*n4).GetID()<<endl;
    cout<<n4<<endl;*/
}