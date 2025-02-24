#include <SPS.h>
/*
This is the cpp file for estimating the position of the bioscope


*/

//Constructor

SPS::SPS(){
std::cout << "SPS init" << std::endl;
}



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

    return true;
}



bool SPS::getData(){

    return true;
}

//Calculation functions


std::vector<float> SPS::latteratePosition(){



}



double SPS::CalculateDeviation(){




}



std::vector<float> SPS::findPositionWithBaro(){



}


//All functions to latterate position using newtons method


void SPS::newtonEstimatePosition(std::vector<double> Gvector,
                                std::vector<double> Avector,
                                std::vector<double> Bvector,
                                std::vector<double> Cvector,
                                std::vector<double> Tvector,
                                int lenghtA, double c)
{
    //Init variables for the different vectors
    std::vector<double> Guess;
    std::vector<double> Fvector;
    std::vector<std::vector<double>> Dmatrix;
    std::vector<double> Vvector;

    Guess = Gvector;

    createFvector(Fvector,Guess, Avector, Bvector, Cvector, Tvector, lenghtA, c);
    createDvector(Dmatrix,Guess, Avector, Bvector, Cvector, Tvector, lenghtA, c);

    double error = 1;
    int iteartions = 1;

    while(iteartions < 20){
        //code 
        std::cout << "Gvector size: " << Gvector.size() << std::endl;
        std::cout << "Vvector size: " << Vvector.size() << std::endl;
        std::cout << "Guess size: " << Guess.size() << std::endl;

        std::cout << "Dmatrix size: " << Dmatrix.size() << std::endl;
        findVvector(Vvector, Dmatrix, Fvector, lenghtA);
        std::cout << "Gvector size: " << Gvector.size() << std::endl;
        std::cout << "Vvector size: " << Vvector.size() << std::endl;
        std::cout << "Guess size: " << Guess.size() << std::endl;


        makeNewGuessVector(Guess, Vvector, Guess);

        createFvector(Fvector,Guess, Avector, Bvector, Cvector, Tvector, lenghtA, c);
        createDvector(Dmatrix,Guess, Avector, Bvector, Cvector, Tvector, lenghtA, c);


        iteartions += 1;
    }
    std::cout << "estimated position" << std::endl;
    std::cout << "X: " << Guess.at(0) << std::endl;
    std::cout << "Y: " << Guess.at(1) << std::endl;
    std::cout << "Z: " << Guess.at(2) << std::endl;
    std::cout << "t: " << Guess.at(3) << std::endl;
}



//Alternative using eigen library:
















// --- - - - - - - -- - - - - - - - - - - -

void SPS::createFvector(std::vector<double> &Fvector,
                        std::vector<double> Gvector,
                        std::vector<double> Avector,
                        std::vector<double> Bvector,
                        std::vector<double> Cvector,
                        std::vector<double> Tvector,
                        int lenghtA, double c)
{
std::vector<double> tempFvector;
std::cout << "Vec size Gvector: " << Gvector.size() << std::endl;
for(int i = 0; i < lenghtA; i++){
    tempFvector.push_back( std::pow((Gvector.at(0))-Avector.at(i),2)
                         + std::pow((Gvector.at(1))-Bvector.at(i),2)
                         + std::pow((Gvector.at(2))-Cvector.at(i),2)
                          -std::pow(c*(Tvector.at(i)-(Gvector.at(3))),2));
}
Fvector = tempFvector;
std::cout << "Fvec created sucessfully!" << std::endl;
}

void SPS::createDvector(std::vector<std::vector<double>> &Dvector,
                        std::vector<double> Gvector,
                        std::vector<double> Avector,
                        std::vector<double> Bvector,
                        std::vector<double> Cvector,
                        std::vector<double> Tvector,
                        int lenghtA, double c)
{
//Creates temporary jacobian matrix
std::vector<std::vector<double>> tempDvector;
std::cout << "Creatinf D matrix ..." << std::endl;
//Creates each element in jacobian
for(int i = 0; i < lenghtA; i++){
    //Indeces the jacobian matrix
        std::vector<double> tempDataVector = {2*(Gvector.at(0)-Avector.at(i)),2*(Gvector.at(1)-Bvector.at(i)),2*(Gvector.at(2)-Cvector.at(i)),2*std::pow(c,2)*Tvector.at(i)-Gvector.at(3)};
        tempDvector.push_back(tempDataVector);
    }   
std::cout << "Created D matrix sucessfully!" << std::endl;
Dvector = tempDvector;
}

void SPS::findVvector(std::vector<double> &Vvector,
                        std::vector<std::vector<double>> Dmatrix,
                        std::vector<double> &Fvector,
                        int lengthA)
{
    std::vector<std::vector<double>> Dinverse;
    std::vector<double> tempVvector;
    std::cout << Dmatrix.size() << std::endl;
    inverse(Dmatrix,Dinverse);
    
    for(int i = 0; i < 4; i++){
        double tempSum;
        for(int j = 0; j < lengthA; j++){for(int i = 0; i < lengthA; i++){
                tempSum += Dinverse.at(j).at(i)*(-Fvector.at(j));
            }
        }
        tempVvector.push_back(tempSum);
    }
    Vvector = tempVvector;
}


void SPS::makeNewGuessVector(std::vector<double> Gvector,
                            std::vector<double> Vvector,
                            std::vector<double> &Guess)
{
    std::vector<double> tempGvector;
    for(int i = 0; i < Gvector.size(); i++){
        tempGvector.push_back(Gvector.at(i)+ Vvector.at(i));
    }
    Guess = tempGvector;
}



//The following functions are taken from: https://www.geeksforgeeks.org/adjoint-inverse-matrix/

/*

void SPS::getCof(std::vector<std::vector<double>>& mat, std::vector<std::vector<double>>& cof, 
                                        int p, int q, int n) {
    int i = 0, j = 0;
    for (int row = 0; row < n; row++) {
        for (int col = 0; col < n; col++) {
            if (row != p && col != q) {
                cof[i][j++] = mat[row][col];
                if (j == n - 1) {
                    j = 0;
                    i++;
                }
            }
        }
    }
}

// Recursive function for finding determinant 
// of matrix mat of dimension n
int SPS::getDet(std::vector<std::vector<double>>& mat, int n) {
    if (n == 1) return mat[0][0];
    
    int det = 0;
  
    // To store cofactors
    std::vector<std::vector<double>> cof(mat.size(), std::vector<double>(mat.size()));
  
    int sign = 1;
    for (int f = 0; f < n; f++) {
        getCof(mat, cof, 0, f, n);
        det += sign * mat[0][f] * getDet(cof, n - 1);
        sign = -sign;
    }
    return det;
}

// Function to get adjoint of mat in adj
void SPS::adjoint(std::vector<std::vector<double>>& mat, std::vector<std::vector<double>>& adj) {
    int n = mat.size();
    if (n == 1) {
        adj[0][0] = 1;
        return;
    }
    
    int sign = 1;
    std::vector<std::vector<double>> cof(n, std::vector<double>(n));
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            getCof(mat, cof, i, j, n);
            sign = ((i + j) % 2 == 0) ? 1 : -1;
            adj[j][i] = sign * getDet(cof, n - 1);
        }
    }
}

// Function to calculate and store inverse, returns 
// false if matrix is singular
bool SPS::inverse(std::vector<std::vector<double>>& mat, std::vector<std::vector<double>>& inv) {
    int n = mat.size();
    int det = getDet(mat, n);
    if (det == 0) {
        std::cout << "Singular matrix, can't find its inverse";
        return false;
    }

    std::vector<std::vector<double>> adj(n, std::vector<double>(n));
    adjoint(mat, adj);

    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++)
            inv[i][j] = adj[i][j] / float(det);

    return true;
}

*/

int SPS::getDet(std::vector<std::vector<double>>& mat, int n) {
    if (n == 1) return mat[0][0];

    if (n == 2) // Base case for 2x2 matrices
        return mat[0][0] * mat[1][1] - mat[0][1] * mat[1][0];

    int det = 0;
    int sign = 1;

    std::vector<std::vector<double>> cof(n - 1, std::vector<double>(n - 1));

    for (int f = 0; f < n; f++) {
        getCof(mat, cof, 0, f, n); // Ensure correct extraction
        det += sign * mat[0][f] * getDet(cof, n - 1);
        sign = -sign;
    }
    return det;
}

void SPS::getCof(std::vector<std::vector<double>>& mat, 
                 std::vector<std::vector<double>>& cof, 
                 int p, int q, int n) {
    int i = 0, j = 0;
    for (int row = 0; row < n; row++) {
        if (row == p) continue;
        for (int col = 0; col < n; col++) {
            if (col == q) continue;
            cof[i][j++] = mat[row][col];
            if (j == n - 1) {
                j = 0;
                i++;
            }
        }
    }
}

void SPS::adjoint(std::vector<std::vector<double>>& mat, 
                  std::vector<std::vector<double>>& adj) {
    int n = mat.size();
    if (n == 1) {
        adj[0][0] = 1;
        return;
    }

    int sign = 1;
    std::vector<std::vector<double>> cof(n - 1, std::vector<double>(n - 1));

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            getCof(mat, cof, i, j, n);
            sign = ((i + j) % 2 == 0) ? 1 : -1;
            adj[j][i] = sign * getDet(cof, n - 1);
        }
    }
}

bool SPS::inverse(std::vector<std::vector<double>>& mat, 
                  std::vector<std::vector<double>>& inv) {
    int n = mat.size();
    int det = getDet(mat, n);
    if (det == 0) {
        std::cout << "Singular matrix, can't find its inverse";
        return false;
    }

    std::vector<std::vector<double>> adj(n, std::vector<double>(n));
    adjoint(mat, adj);

    for (int i = 0; i < n; i++)
        for (int j = 0; j < n; j++)
            inv[i][j] = adj[i][j] / float(det);

    return true;
}
