#include <SPS.h>
/*
This is the cpp file for estimating the position of the bioscope


*/

double hitrate = 1;
int hitRateLength = 100;

//Constructor

SPS::SPS(std::vector<double> avector,
        std::vector<double> bvector,
        std::vector<double> cvector,
        Eigen::Vector4d Gvector,
        int lenghta, double c_input){
        
    guessVector = Gvector;
    Avector = avector;
    Bvector = bvector;
    Cvector = cvector;
    lenghtA = lenghta;
    Tvector = {0.1,0.1,0.1,0.1};
    c = c_input;
    std::cout << "SPS init" << std::endl;
}



//Retrieve private data functions

double SPS::getBaroDepth(){
    return baroDepth;
}

double SPS::getTemperature(){
    return temperature;
}

int SPS::getCalcTime(){
    
    return calcTime;
}


//Calculation functions

bool SPS::makePing(std::vector<double> &tVec){

    //Update baro function for when barometer works

    //updateBaro()
   
    double barodepth = 1;
    if(tVec.size() == 4){
        
        guessVector(3) += (*std::max_element(tVec.begin(), tVec.end())) - 0.0011661808;
        std::cout << "Estimated time bias: " << guessVector(3);

        result = latteratePosition(guessVector,tVec, barodepth);
        
        if(result(2) < -40){
            std::cout << "Invalid solution" << std::endl;
            hitrate += (- hitrate) / hitRateLength;
            return false;
        }
        if(result(2) > 0){
            std::cout << "Invalid solution" << std::endl;
            hitrate += (- hitrate) / hitRateLength;
            return false;
        }
            
    } else {
        std::cout << "Wrong input vector" << std::endl;
        return false;
    }
    hitrate += (1- hitrate) / hitRateLength;
    return true;
}


//Return estimated position
Eigen::Vector4d SPS::getData(){
    return result;
}

//Update barometer data for when baro is functional
bool SPS::updateBaro(double &barodepth){

}


//Calculation functions


Eigen::Vector4d SPS::latteratePosition(Eigen::Vector4d &Gvector, std::vector<double> Tvector, double baroDepth){
    Eigen::Vector4d NewtonResult;
    long long starttime =  getCurrentTimeMicros();
    newtonEstimatePosition(Gvector,Tvector,NewtonResult);
    calcTime = getCurrentTimeMicros() - starttime;
    //NewtonResult(0) += 450;
    //NewtonResult(1) += 300;
    //NewtonResult(2) -= 6000;
    return NewtonResult;
}


//All functions to latterate position using newtons method

void SPS::newtonEstimatePosition(Eigen::Vector4d &Gvector,
                                std::vector<double> Tvector,
                                Eigen::Vector4d &Result)
{
    //Init variables for the different vectors
    Eigen::Vector4d Guess;
    Eigen::VectorXd Fvector;
    Eigen::MatrixXd Dmatrix(lenghtA,4);
    Eigen::Vector4d Vvector;
    Vvector.setZero(4);

    Guess = Gvector;

    createFvector(Fvector,Guess, Tvector);
    createDvector(Dmatrix,Guess, Tvector);

    if (Fvector.size() == 0) {
        std::cerr << "Error: Fvector is empty, cannot proceed!" << std::endl;
        return;
    }

    double error = 1;
    int iteartions = 1;

    while(iteartions < 30){

        //Check that determinant != 0        
        double det = Dmatrix.determinant();
        if(det != 0){

        //Solve the matrix equation gD = -F using the Eigen library
        Vvector = Dmatrix.jacobiSvd(Eigen::ComputeThinU | Eigen::ComputeThinV).solve(-Fvector);
        } else {
            std::cout << "Determinant = 0! Invalid data!" << std::endl;
        }
        
        //Update the current guess vector
        Guess = (Guess + Vvector);

        //Update the current function vector and jacobian matrix
        createFvector(Fvector,Guess, Tvector);
        createDvector(Dmatrix,Guess, Tvector);

        iteartions += 1;
    }
    Result = Guess;
}



//Creating function vector
void SPS::createFvector(Eigen::VectorXd &Fvector,
                        Eigen::Vector4d &Gvector,
                        std::vector<double> Tvector)
{
Eigen::VectorXd tempFvector;
tempFvector.resize(lenghtA);
tempFvector.setZero();

if (Avector.size() < lenghtA || Bvector.size() < lenghtA || 
        Cvector.size() < lenghtA || Tvector.size() < lenghtA) {
        std::cerr << "Error: One of the vectors is too small! Avector: " << Avector.size() 
                  << ", Bvector: " << Bvector.size() 
                  << ", Cvector: " << Cvector.size() 
                  << ", Tvector: " << Tvector.size() << std::endl;
        return;
    }
Fvector = Eigen::VectorXd::Zero(lenghtA);
for(int i = 0; i < lenghtA; i++){
    tempFvector(i) = ( std::pow((Gvector(0))-Avector.at(i),2)
                         + std::pow((Gvector(1))-Bvector.at(i),2)
                         + std::pow((Gvector(2))-Cvector.at(i),2)
                          -std::pow(c*(Tvector.at(i)-(Gvector(3))),2));
}
Fvector = tempFvector;
}


void SPS::createDvector(Eigen::MatrixXd &Dvector,
                        Eigen::Vector4d &Gvector,
                        std::vector<double> Tvector)
{


//Creates temporary jacobian matrix
Eigen::MatrixXd tempDvector(lenghtA,4);
 if (Avector.size() < lenghtA || Bvector.size() < lenghtA || 
        Cvector.size() < lenghtA || Tvector.size() < lenghtA) {
        std::cerr << "Error: One of the vectors is too small! Avector: " << Avector.size() 
                  << ", Bvector: " << Bvector.size() 
                  << ", Cvector: " << Cvector.size() 
                  << ", Tvector: " << Tvector.size() << std::endl;
        return;
    }


//Creates each element in jacobian
for(int i = 0; i < lenghtA; i++){
    //Indeces the jacobian matrix
        tempDvector(i,0) = 2*(Gvector(0)-Avector.at(i));
        tempDvector(i,1) = 2*(Gvector(1)-Bvector.at(i));
        tempDvector(i,2) = 2*(Gvector(2)-Cvector.at(i));
        tempDvector(i,3) = 2*std::pow(c,2)*(Tvector.at(i)-Gvector(3));

    }   
Dvector = tempDvector;
}

// --- - - - - - - -- - - - - - - - - - - -

//Return system time in microseconds

long long getCurrentTimeMicros() {
    return std::chrono::duration_cast<std::chrono::microseconds>(
        std::chrono::system_clock::now().time_since_epoch()
    ).count();
}

