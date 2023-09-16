#ifndef GRAPHNODE_GRAPHNODE_H
#define GRAPHNODE_GRAPHNODE_H


class GraphNode{

    friend GraphNode operator+(const GraphNode &node1,const GraphNode &node2);

public:

    GraphNode(int nodeID);
    void SetID(int newID);
    int GetID() const;
    bool setNeighborNode(GraphNode & n);
    bool deleteNeighborNode(GraphNode & n);
    GraphNode *getNeighborAtIndex(int index);

private:

    int ID;
    GraphNode* neighborNodes[5] ;


};


#endif //GRAPHNODE_GRAPHNODE_H
