#pragma once

#include <vector>
#include "math.h"
#include "cmath" 
#include <iostream>
#include <Eigen/Dense>

/*
 This is the header file for the SPS system
 *
 * 
 */


class SPS{
private:
    double perimeterX;
    double perimeterY;
    double lightSpeed = 300;
    std::vector<double> Avector;
    std::vector<double> Bvector;
    std::vector<double> Cvector;
    std::vector<double> Tvector;
    int lenghtA;
    double c;
    Eigen::Vector4d guessVector;
    Eigen::Vector4d result;



std::vector<double> xyzPosition = {0,0,0};
float baroDepth = 0;
float temperature = 0;
public:
    SPS(std::vector<double> Avector,
        std::vector<double> Bvector,
        std::vector<double> Cvector,
        Eigen::Vector4d Gvector,
        int lenghtA, double c);

    //Retrive private data functions
    void getPosition(std::vector<double> &pos_vector);
    double getBaroDepth();
    double getTemperature();

    //Comunication and receiving data
    bool InitUART();
    bool makePing();
    Eigen::Vector4d getData();
    bool updateBaro(double &barodepth);



    //Calculations
    Eigen::Vector4d latteratePosition(Eigen::Vector4d &Gvector, std::vector<double> Tvector, double baroDepth);
    double CalculateDeviation();


    //Estimates the location of the bioscope
    void newtonEstimatePosition(Eigen::Vector4d &Gvector,
                                std::vector<double> Tvector,
                                Eigen::Vector4d &Result);

    //Creates the function of the sonar reciever positions
    void createFvector( Eigen::VectorXd &Fvector,
                        Eigen::Vector4d &Gvector,
                        std::vector<double> Tvector);

    //Creates the jacobian of the F-vector for newtons method
    void createDvector(Eigen::MatrixXd &Dvector,
                        Eigen::Vector4d &Gvector,
                        std::vector<double> Tvector);

};