#pragma once

#include <vector>
#include "math.h"
#include "cmath" 

/*
 This is the header file for the SPS system
 *
 * 
 */


class SPS{
private:
    double perimeterX;
    double perimeterY;


std::vector<double> xyzPosition = {0,0,0};
float baroDepth = 0;
float temperature = 0;
public:
    //SPS();

    //Retrive private data functions
    void getPosition(std::vector<double> &pos_vector);
    float getBaroDepth();
    float getTemperature();

    //Comunication and receiving data
    bool InitUART();
    bool makePing();
    bool getData();


    //Calculations
    std::vector<float> latteratePosition();
    double CalculateDeviation();
    std::vector<float> findPositionWithBaro();


};