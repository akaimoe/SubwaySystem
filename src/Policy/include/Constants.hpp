#pragma once

#include "bits/stdc++.h"
using namespace std;

int INF = 10000;

typedef struct Anode
{
    int adjvex;
    struct Anode *nextarc;
    int weight;

} RoundNode;

typedef struct Vnode
{
    int no;
    string StationName;
    RoundNode *firstarc;
} StationNode;

typedef struct
{
    StationNode adjlist[1000];
    int n, e; // 站点数  路线数
} SubWayMap;

typedef struct
{
    int edges[300][300];
    int n, e;
    // StationNode vexs[10000];
} MatGraph;

class Station
{
private:
    SubWayMap *m_subWayMap;
    int m_MinDist;
    int m_StartPoint;
    int m_EndPoint;
    int m_MinRound[100];
    MatGraph m_MatMap;
    vector<string> Stations;
    string Station2StationNO[300][300];

public:
    Station();
    Station(int MatMap[][300], int n, int e);
    Station(string filename1, string filename2);
    ~Station();
    void DispMap();
    void MinRound(int StartPoint, int m_EndPoint, vector<int> &Min_Round, vector<string> &CrossRound);
    void InitStations(string filename);
    int StationNO(string StationName);
    string StationName(int no);
    void MatCreat(string filename);
    void CreateAdj();
    void Dispath(int dist[], int path[], int s[], vector<int> &apath);
    void InitRound(string filename);
};

Station::Station(int MatMap[][300], int n, int e)
{
    int i, j;
    for (i = 1; i <= n; i++)
    {
        for (j = 1; j <= n; j++)
        {
            m_MatMap.edges[i][j] = MatMap[i][j];
        }
    }

    m_MatMap.n = n;
    m_MatMap.e = e;
}

Station::Station()
{
}

Station::Station(string filename1, string filename2)
{
    string StationName, old_StationName, RountName;
    InitStations(filename1);
    MatCreat(filename2);
    CreateAdj();
}

Station::~Station()
{
}

string Station::StationName(int no)
{
    return Stations[no];
}

void Station::CreateAdj()
{
    int i, j;
    RoundNode *p;
    m_subWayMap = new SubWayMap;

    for (i = 1; i <= m_MatMap.n; i++)
    {
        m_subWayMap->adjlist[i].firstarc = NULL;
    }
    for (i = 0; i < m_MatMap.n; i++)
    {
        for (j = m_MatMap.n; j >= 0; j--)
        {
            if (m_MatMap.edges[i][j] < INF && m_MatMap.edges[i][j] != 0)
            {
                p = new RoundNode;
                p->adjvex = j;
                p->weight = m_MatMap.edges[i][j];
                p->nextarc = m_subWayMap->adjlist[i].firstarc;
                m_subWayMap->adjlist[i].firstarc = p;
            }
        }
    }
    m_subWayMap->n = m_MatMap.n;
    m_subWayMap->e = m_MatMap.e;
}

void Station::InitStations(string filename)
{
    int n = 0;
    string StationName;
    ifstream InitFile;
    InitFile.open(filename);
    while (!InitFile.eof())
    {
        InitFile >> StationName;
        Stations.push_back(StationName);
        n++;
    }
    m_MatMap.n = n;
    InitFile.close();
}

void Station::MatCreat(string filename)
{
    int e = 0;
    string StationName, old_StationName, RountName;
    // string SaveFileDir = "output.txt";
    ifstream InitFile;
    InitFile.open(filename.data());
    // InitFile.get(old_ch);
    InitFile >> RountName;
    InitFile >> old_StationName;
    while (!InitFile.eof())
    {
        InitFile >> StationName;
        if (StationName == "/")
        {
            InitFile >> RountName;
            InitFile >> old_StationName;
            InitFile >> StationName;
        }

        if (StationNO(old_StationName) == -1 || StationNO(StationName) == -1)
            continue;
        // cout << StationNO(old_StationName) << ' ' << StationNO(StationName) << endl;
        Station2StationNO[StationNO(old_StationName)][StationNO(StationName)] = RountName;
        Station2StationNO[StationNO(StationName)][StationNO(old_StationName)] = RountName;
        m_MatMap.edges[StationNO(old_StationName)][StationNO(StationName)] = 1;
        m_MatMap.edges[StationNO(StationName)][StationNO(old_StationName)] = 1;
        e++;
        // cout << e << endl;
        old_StationName = StationName;
    }
    for (int i = 0; i < m_MatMap.n; i++)
    {
        for (int j = 0; j < m_MatMap.n; j++)
        {
            if (m_MatMap.edges[i][j] == 0)
            {
                m_MatMap.edges[i][j] = INF;
            }
        }
    }

    m_MatMap.e = e;
    InitFile.close();
}

int Station::StationNO(string StationName)
{
    for (int i = 0; i < Stations.size(); i++)
    {
        if (StationName == Stations[i])
            return i;
    }
    return -1;
}

void Station::DispMap()
{
    int i;
    RoundNode *p;
    for (i = 0; i < m_subWayMap->n; i++)
    {
        p = m_subWayMap->adjlist[i].firstarc;
        cout << i << ' ';
        while (p != NULL)
        {
            cout << p->adjvex << '[' << p->weight << ']' << "->";
            p = p->nextarc;
        }
        cout << endl;
    }
}

void Station::MinRound(int StartPoint, int EndPoint, vector<int> &Min_Round, vector<string> &CrossRound)
{
    int dist[150000], path[100000];
    int s[100000];
    int u;
    m_StartPoint = StartPoint;
    m_EndPoint = EndPoint;
    if (m_StartPoint == -1)
    {
        return;
    }
    if (m_EndPoint == -1)
    {
        return;
    }
    // cout << "startpoint:" << m_StartPoint << " endpoint:" << m_EndPoint << endl;
    // cout << "startname:" << Stations[m_StartPoint] << " endpoint:" << Stations[m_EndPoint] << endl;
    for (int i = 0; i < m_MatMap.n; i++)
    {
        dist[i] = m_MatMap.edges[m_StartPoint][i];
        s[i] = 0;
        if (m_MatMap.edges[m_StartPoint][i] < INF)
        {
            path[i] = m_StartPoint;
        }
        else
        {
            path[i] = -1;
        }
    }
    s[m_StartPoint] = 1;
    path[m_StartPoint] = 0;
    for (int i = 0; i < m_MatMap.n - 1; i++)
    {
        m_MinDist = INF;
        for (int j = 0; j < m_MatMap.n; j++)
        {
            if (s[j] == 0 && dist[j] < m_MinDist)
            {
                u = j;
                m_MinDist = dist[j];
            }
        }
        s[u] = 1;
        for (int j = 0; j < m_MatMap.n; j++)
        {
            if (s[j] == 0)
            {
                if (m_MatMap.edges[u][j] < INF && dist[u] + m_MatMap.edges[u][j] < dist[j])
                {
                    dist[j] = dist[u] + m_MatMap.edges[u][j];
                    path[j] = u;
                }
            }
        }
    }
    Dispath(dist, path, s, Min_Round);
    for (int i = 1; i < Min_Round.size(); i++)
    {
        if((Min_Round[i] == StationNO("中南路") && Min_Round[i-1] == StationNO("洪山广场")) || (Min_Round[i] == StationNO("洪山广场") && Min_Round[i-1] == StationNO("中南路")))
        {
            if(Min_Round.size() == 2)
            {
                CrossRound.push_back(Station2StationNO[Min_Round[i]][Min_Round[i-1]]);
                cout << Station2StationNO[Min_Round[i]][Min_Round[i-1]] << endl;
                continue;
            }
            else
            {
                continue;
            }
        }
        if(CrossRound.empty())
            CrossRound.push_back(Station2StationNO[Min_Round[i]][Min_Round[i-1]]);
        else if(CrossRound[CrossRound.size()-1] != Station2StationNO[Min_Round[i]][Min_Round[i-1]])
            CrossRound.push_back(Station2StationNO[Min_Round[i]][Min_Round[i-1]]);
        cout << Station2StationNO[Min_Round[i]][Min_Round[i-1]] << endl;
    }


}

void Station::Dispath(int dist[], int path[], int s[], vector<int> &Min_Round)
{
    vector<int> apath;
    int i, j, k;
    int d = 0;
    apath.push_back(m_EndPoint);
    k = path[m_EndPoint];
    // cout << dist[m_EndPoint] << "=" << endl;
    // cout << Stations[path[k]] << endl;
    if (k == -1)
    {
        apath[0] = -1;
        return;
    }
    else
    {
        while (k != m_StartPoint)
        {
            d++;
            apath.push_back(k);
            k = path[k];
            // if (d < 30)
            // cout << d << ' ' << k << ' ' << Stations[k] << endl;
        }
        d++;
        apath.push_back(m_StartPoint);
    }
    for (i = d; i >= 0; i--)
    {
        cout << Stations[apath[i]] << ' ';
        Min_Round.push_back(apath[i]);
    }
    cout << endl;
}
