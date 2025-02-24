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


std::vector<double> xyzPosition = {0,0,0};
float baroDepth = 0;
float temperature = 0;
public:
    SPS();

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

    //Estimates the location of the bioscope
    void newtonEstimatePosition(std::vector<double> Gvector,
                                std::vector<double> Avector,
                                std::vector<double> Bvector,
                                std::vector<double> Cvector,
                                std::vector<double> Tvector,
                                int lenghtA, double c);

    //Creates the function of the sonar reciever positions
    void createFvector(std::vector<double> &Fvector,
                        std::vector<double> Gvector,
                        std::vector<double> Avector,
                        std::vector<double> Bvector,
                        std::vector<double> Cvector,
                        std::vector<double> Tvector,
                        int lenghtA, double c);

    //Creates the jacobian of the F-vector for newtons method
    void createDvector(std::vector<std::vector<double>> &Dvector,
                        std::vector<double> Gvector,
                        std::vector<double> Avector,
                        std::vector<double> Bvector,
                        std::vector<double> Cvector,
                        std::vector<double> Tvector,
                        int lenghtA, double c);

    //Finds the product of inv(D) %*% -F
    void findVvector(std::vector<double> &Vvector,
                        std::vector<std::vector<double>> Dmatrix,
                        std::vector<double> &Fvector,
                        int lengthA);

    void makeNewGuessVector(std::vector<double> Gvector,
                            std::vector<double> Vvector,
                            std::vector<double> &Guess);

    //The following functions are taken from https://www.geeksforgeeks.org/adjoint-inverse-matrix/
    void getCof(std::vector<std::vector<double>>& mat, std::vector<std::vector<double>>& cof, int p, int q, int n);
    int getDet(std::vector<std::vector<double>>& mat, int n);
    void adjoint(std::vector<std::vector<double>>& mat, std::vector<std::vector<double>>& adj);
    bool inverse(std::vector<std::vector<double>>& mat, std::vector<std::vector<double>>& inv);
    //- - - - - - - - - - -


};