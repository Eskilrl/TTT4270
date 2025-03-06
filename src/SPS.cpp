#include <SPS.h>
/*
This is the cpp file for estimating the position of the bioscope


*/

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
    c = c_input;
    std::cout << "SPS init" << std::endl;
}



//Retrieve private data functions

void SPS::getPosition(std::vector<double> &pos_vector){
    
}

double SPS::getBaroDepth(){
    return baroDepth;
}

double SPS::getTemperature(){
    return temperature;
}

int SPS::getCalcTime(){
    std::cout << calcTime << std::endl;
    return calcTime;
}

//Communication functions

bool SPS::InitUART(){




    return true;
}



bool SPS::makePing(){
    //updateBaro()
    /*
    //temp test data
    double barodepth = 1;
    std::vector<double> Tvector = {0.07074,0.07220,0.07690,0.07242}; //Time measurment from sensors
    
    int randomNum;
    
    srand(time(0));
    randomNum = rand() % 101;
    double x_noise = (randomNum-50)/10000;

    srand(time(0));
    randomNum = rand() % 101;
    double y_noise = (randomNum-50)/10000;

    srand(time(0));
    randomNum = rand() % 101;
    double z_noise = (randomNum-50)/10000;

    srand(time(0));
        randomNum = rand() % 101;
    double t_noise = (randomNum-50)/10000;
    std::cout << Tvector.size() << std::endl;
    Tvector.at(0) = (Tvector.at(0) + x_noise);
    Tvector.at(1) = (Tvector.at(1) + y_noise);
    Tvector.at(2) = (Tvector.at(2) + z_noise);
    Tvector.at(3) = (Tvector.at(3) + t_noise);
    */
    // Temp test data
    double barodepth = 1;
    std::vector<double> Tvector = {0.07074, 0.07220, 0.07690, 0.07242}; // Time measurements from sensors
    
    int randomNum;

    // Seed the random number generator ONCE
    srand(time(0));

    double x_noise = ((rand() % 101) - 50) / 10000000.0;
    double y_noise = ((rand() % 101) - 50) / 10000000.0;
    double z_noise = ((rand() % 101) - 50) / 10000000.0;
    double t_noise = ((rand() % 101) - 50) / 10000000.0;

    Tvector.at(0) += x_noise;
    Tvector.at(1) += y_noise;
    Tvector.at(2) += z_noise;
    Tvector.at(3) += t_noise;

    
    result = latteratePosition(guessVector,Tvector, barodepth);

    return true;
}



Eigen::Vector4d SPS::getData(){

    return result;
}

bool SPS::updateBaro(double &barodepth){



}


//Calculation functions


Eigen::Vector4d SPS::latteratePosition(Eigen::Vector4d &Gvector, std::vector<double> Tvector, double baroDepth){
    Eigen::Vector4d NewtonResult;
    long long starttime =  getCurrentTimeMillis();
    newtonEstimatePosition(Gvector,Tvector,NewtonResult);
    calcTime = getCurrentTimeMillis() - starttime;
    return NewtonResult;
}



double SPS::CalculateDeviation(){




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

    while(iteartions < 20){

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



//Alternative using eigen library:


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


long long getCurrentTimeMillis() {
    return std::chrono::duration_cast<std::chrono::milliseconds>(
        std::chrono::system_clock::now().time_since_epoch()
    ).count();
}

