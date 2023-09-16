#include "GraphNode.h"
#include <iostream>

using namespace std;

GraphNode::GraphNode(int nodeID):ID(nodeID){
    for(int x=0;x<5;x++)
    {neighborNodes[x]=NULL;}
}

void GraphNode::SetID(int newID) {
    ID = newID;
}

int GraphNode::GetID() const {
    return ID;
}

bool GraphNode::setNeighborNode(GraphNode & n){
    for(int x=0;x<5;x++) {

        if (neighborNodes[x] == &n) {
            return false;
        }
    }
    for(int a=0;a<5;a++) {

        if (!neighborNodes[a]) {
            neighborNodes[a] = &n;
            return true;
        }
    }


    return false;

}

bool GraphNode::deleteNeighborNode(GraphNode & n){
    for(int x=0;x<5;x++) {

        if (neighborNodes[x] == &n) {
            neighborNodes[x] = NULL;
            return true;
        }
    }
    return false;

}
GraphNode* GraphNode::getNeighborAtIndex(int index){

    return neighborNodes[index];

}
GraphNode operator+(const GraphNode &node1,const GraphNode &node2){
GraphNode sum(0);
int a = 0;

        for (int x = 0; x < 5; x++) {

            if (node1.neighborNodes[x]) {

                sum.neighborNodes[a] = node1.neighborNodes[x];

                ++a;
            }
            if (node2.neighborNodes[x]) {

                sum.neighborNodes[a] = node2.neighborNodes[x];

                ++a;
            }
            if (a==5)
                return sum;
        }


return sum;
}


int main() {

    GraphNode n1(1),n2(2),n3(3),n4(4);

    n1.setNeighborNode(n3);
    n2.setNeighborNode(n4);
    n3.setNeighborNode(n4);
    n4.setNeighborNode(n1);
    n3.setNeighborNode(n1);

    GraphNode n5(5) ;
    n5 = n1 + n2;
    n5.SetID(5);


    GraphNode* graphnodes[] = {&n1,&n2,&n3,&n4,&n5};

    for (int a=0;a<5;a++) {
        for (int x = 0; x < 5; x++) {
            if (graphnodes[a]->getNeighborAtIndex(x))
                cout <<graphnodes[a]->GetID()<<"->"<<(*(graphnodes[a]->getNeighborAtIndex(x))).GetID() << endl;
        }
    }


    return 0;
}
