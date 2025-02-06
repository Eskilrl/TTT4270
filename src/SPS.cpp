#include <SPS.h>
/*
This is the cpp file for estimating the position of the bioscope


*/

//Retrieve private data functions

std::vector<float> SPS::getPosition(){
    return xyzPosition;
}

float SPS::getBaroDepth(){
    return baroDepth;
}

float SPS::getTemperature(){
    return temperature;
}


//Communication functions

bool SPS::InitUART(){




    return true;
}



bool SPS::makePing(){


}



bool SPS::getData(){


}

//Calculation functions


std::vector<float> SPS::latteratePosition(){



}



double SPS::CalculateDeviation(){




}



std::vector<float> SPS::findPositionWithBaro(){



}