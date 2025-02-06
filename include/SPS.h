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

std::vector<float> xyzPosition = {0,0,0};
float baroDepth = 0;
float temperature = 0;
public:
    SPS();

    //Retrive private data functions
    std::vector<float> getPosition();
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