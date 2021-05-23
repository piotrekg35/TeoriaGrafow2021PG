#include <iostream>
#include <fstream>
#include <vector>
#include <queue>

using namespace std;
int min(int a,int b)
{
    return a<b?a:b;
}

class Node{
public:
    char name;
    bool visited;
    Node *parent;
    vector<Node *> next;
    Node(){}
    Node(char n){name=n;visited= false;parent= nullptr;}
    void addNext(Node *n){next.push_back(n);}

};
class Edge{
public:
    Node *start;
    Node *end;
    int value;
    Edge(Node *s,Node *e,int v)
    {
        start=s;
        end=e;
        value=v;
    }
};
class Graph{
public:
    vector<Edge*>edges;
    vector<Node*>nodes;
    Node *source;
    Node *sink;
    Graph() {
        ifstream f;
        f.open("graph.txt");
        int l, m,d;
        char z;
        if (f) {
            f >> l;
            for (int j = 0; j < l; j++) {
                Node *n = new Node('A' + j);
                nodes.push_back(n);
            }
            for (int i = 0; i < l; i++) {
                f >> m;
                for (int j = 0; j < m; j++) {
                    f>>z;
                    f>>d;
                    if(ef(nodes[i],nodes[z-'A']))ef(nodes[i],nodes[z-'A'])->value=d;
                    else {
                        Edge *e=new Edge(nodes[i],nodes[z-'A'],d);
                        edges.push_back(e);
                        Edge *e1=new Edge(nodes[z-'A'],nodes[i],0);
                        edges.push_back(e1);
                        nodes[i]->addNext(nodes[z-'A']);
                    }
                }
            }
            source=nodes[0];
            sink=nodes[nodes.size()-1];

            f.close();
        }
    }
    Edge *ef(Node *s,Node *e)
    {
        for(auto i:edges)
        {
            if(i->start==s&&i->end==e)return i;
        }
        return nullptr;
    }

    bool BFS()
    {
        for(auto v:nodes)v->visited=false;
        queue<Node *>q;
        q.push(source);
        source->visited=true;
        while(!q.empty())
        {
            Node *u=q.front();
            q.pop();
            for(auto v:u->next)
            {
                if(!v->visited && ef(u, v)->value > 0) {
                    if (v == sink) {
                        v->parent = u;
                        return true;
                    }
                    q.push(v);
                    v->parent = u;
                    v->visited = true;
                }
            }
        }
        return false;
    }
    int EdmundKarp()
    {
        int max_flow = 0;
        Node *u,*v;
        while (BFS()) {
            int path_flow = INT_MAX;
            for (v = sink; v != source; v = v->parent) {
                u = v->parent;
                path_flow = min(path_flow, ef(u,v)->value);
            }
            for (v = sink; v != source; v = v->parent) {
                u = v->parent;
                ef(u,v)->value -= path_flow;
                ef(v,u)->value += path_flow;
            }
            max_flow += path_flow;
        }
        return max_flow;
    }

};

int main()
{
    Graph G;
    cout<<G.EdmundKarp();
    return 0;
}

