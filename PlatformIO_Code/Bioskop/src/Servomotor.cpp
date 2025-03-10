#include <Arduino.h>
#include <AccelStepper.h>

const int stepsPerRevolution = 2048;  // change this to fit the number of steps per revolution

// ULN2003 Motor Driver 

#define IN1 19
#define IN2 18
#define IN3 5
#define IN4 17

#define IN5 27
#define IN6 14
#define IN7 12
#define IN8 13

// initialize the stepper library
AccelStepper stepper1(AccelStepper::HALF4WIRE, IN1, IN3, IN2, IN4);
AccelStepper stepper2(AccelStepper::HALF4WIRE, IN5, IN7, IN6, IN8);

void setup() {
  // initialize the serial port
  Serial.begin(115200);
  
  // set the speed and acceleration
  stepper1.setMaxSpeed(500);
  stepper1.setAcceleration(100);

  stepper2.setMaxSpeed(500/4);
  stepper2.setAcceleration(100/4);
  // set target position
  stepper1.moveTo(stepsPerRevolution);
  stepper2.moveTo(stepsPerRevolution/4);


}

void loop() {

  // check current stepper motor position to invert direction
  if (stepper1.distanceToGo() == 0 && stepper2.distanceToGo() == 0){
    stepper1.moveTo(-stepper1.currentPosition());
    stepper2.moveTo(-stepper2.currentPosition());

    Serial.println("Changing direction");
  }
  // move the stepper motor (one step at a time)
  stepper1.run();
  stepper2.run();

}