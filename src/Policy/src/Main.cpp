#include "bits/stdc++.h"
// #include "../include/SubwaySys.hpp"
#include "../include/Constants.hpp"
#include "Policy/TagPoint.h"
#include "Policy/Rount.h"
#include "ros/ros.h"
using namespace std;

int main(int argc, char  *argv[])
{
    setlocale(LC_ALL,"");

    ros::init(argc,argv,"Policy");
    ros::NodeHandle node("Policy_Sys");


    Station station("/home/altair/item/SubwaySystem/src/Policy/configs/Stations.txt", "/home/altair/item/SubwaySystem/src/Policy/configs/Map.txt");
    vector<int> Min_Path;
    vector<string> PathNO;
    Policy::Rount Rount;

    ros::Publisher Pub = node.advertise<Policy::Rount>("/Round", 100);
    ros::Subscriber Sub = node.subscribe<Policy::TagPoint>("/TagPoint", 100, [&](const::Policy::TagPoint::ConstPtr TagPoint)
    {
        int MinPath[100];
        station.MinRound(TagPoint->StartPoint, TagPoint->EndPoint, Min_Path, PathNO);
        for (int i = 0; i < Min_Path.size(); i++)
        {
            MinPath[i] = Min_Path[i];
        }
        cout << "-----" << endl;
        for (int i = 0; i < PathNO.size(); i++)
        {
            cout << PathNO[i];
        }
        cout << "-----" << endl;


        Rount.road = Min_Path;
        Rount.len1 = Min_Path.size();
        Rount.roadNo = PathNO;
        Rount.len2 = PathNO.size();

        cout << (int)Rount.road[5] << endl;

        cout << "send msg" << endl;
        Pub.publish(Rount);
        Min_Path.clear();
        PathNO.clear();
    });



    // SubwaySystem subwaySystem("../include/C_12.txt");
    // subwaySystem.print_adj();

    // station.DispMap();
    // cout << station.StationName(244);


    ros::spin();


}
