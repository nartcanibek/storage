#include <iostream>
#include <stack>
#include <unordered_map>
#include <vector>

using namespace std;

unordered_map<int, vector<int>> graph = {
    {1, {2}},       // Node 1 connects to 2
    {2, {3}},       // Node 2 connects to 3
    {3, {4, 12}},   // Node 3 connects to 4 and 12
    {4, {5}},       // Node 4 connects to 5
    {5, {6, 8}},    // Node 5 connects to 6 and 8
    {6, {7}},       // Node 6 connects to 7 (dead end)
    {8, {9}},       // Node 8 connects to 9
    {9, {10}},      // Node 9 connects to 10
    {10, {11}},     // Node 10 connects to 11
    {11, {16}},     // Node 11 connects to goal node 16
    {12, {13}},     // Node 12 connects to 13
    {13, {14, 17}}, // Node 13 connects to 14 and 17
    {14, {15}},     // Node 14 connects to 15
    {15, {}},       // Node 15 dead end
    {16, {}},       // Goal node
    {17, {18}},     // Node 17 connects to 18 (dead end)
    {18, {}}        // Node 18 dead end
};

void printStack(const stack<int> &s) {
	while (!s.empty()) {
		cout << s.top() << " ";
		s.pop();
	}
	cout << endl;
}

void resolve_backtrack(stack<int> &s)
{
    static int lastBacktrack = 0;

    for (auto it = graph.begin(); it != graph.end(); ++it) {
        
        if (it->second.size() == 0)
        {
            if (it->first == 16)
            {
                return;
            }
            else 
            {
                while (s.pop() != lastBacktrack) {};
            }
        }
        else if (it->second.size() == 1)
        {
            s.push(it->first);   
        }
        else 
        {

        }
        
    }
}   

int main ()
{
	// Create a stack of integers
	stack<int> s;

    resolve_backtrack(s);

    printStack(s);

	cout << "hello world" << endl;

	return 0;
}
