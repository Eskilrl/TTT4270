#include <SPS.h>
/*
This is the cpp file for estimating the position of the bioscope


*/

//Retrieve private data functions

void SPS::getPosition(std::vector<double> &pos_vector){
    pos_vector.at(0) = xyzPosition.at(0);
    pos_vector.at(1) = xyzPosition.at(1);
    pos_vector.at(2) = xyzPosition.at(2);
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