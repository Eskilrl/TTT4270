#include <AccelStepper.h>

// Stepper motor pin definitions for two motors
#define IN1_A 19
#define IN2_A 18
#define IN3_A 5
#define IN4_A 17

#define IN1_B 27
#define IN2_B 14
#define IN3_B 12
#define IN4_B 13

// Joystick pin definitions for two joysticks
#define VRX_PIN_A 39 // Joystick A X-axis (Not used in this case)
#define VRY_PIN_A 15 // Joystick A Y-axis (up/down movement)

#define VRX_PIN_B 34 // Joystick B X-axis (Not used in this case)
#define VRY_PIN_B 36 // Joystick B Y-axis (up/down movement)

const int stepsPerRevolution = 2048;  
const int deadZone = 175; // Dead zone to prevent jitter
const int neutral = 2575; // Midpoint of analog value (approx.)

// Initialize the stepper library for two motors
AccelStepper stepperA(AccelStepper::HALF4WIRE, IN1_A, IN3_A, IN2_A, IN4_A);
AccelStepper stepperB(AccelStepper::HALF4WIRE, IN1_B, IN3_B, IN2_B, IN4_B);

void setup() {
  Serial.begin(115200);
  
  // Set the speed and acceleration for both stepper motors
  stepperA.setMaxSpeed(500);
  stepperA.setAcceleration(100);
  
  stepperB.setMaxSpeed(500);
  stepperB.setAcceleration(100);
}

void loop() {
  // Read joystick values for both motors
  int valueYA = analogRead(VRY_PIN_A); // Joystick A Y-axis
  int valueYB = analogRead(VRY_PIN_B); // Joystick B Y-axis
  
  int speedA = 0;
  int speedB = 0;

  // Handle motor A (controlled by Joystick A)
  if (valueYA > neutral + deadZone) { // Move motor A forward
    speedA = map(valueYA, neutral + deadZone, 4095, 100, 500);
    stepperA.setSpeed(speedA);
  } else if (valueYA < neutral - deadZone) { // Move motor A backward
    speedA = map(valueYA, 0, neutral - deadZone, -500, -100);
    stepperA.setSpeed(speedA);
  } else { // Stop motor A
    stepperA.setSpeed(0);
  }

  // Handle motor B (controlled by Joystick B)
  if (valueYB > neutral + deadZone) { // Move motor B forward
    speedB = map(valueYB, neutral + deadZone, 4095, 100, 500);
    stepperB.setSpeed(speedB);
  } else if (valueYB < neutral - deadZone) { // Move motor B backward
    speedB = map(valueYB, 0, neutral - deadZone, -500, -100);
    stepperB.setSpeed(speedB);
  } else { // Stop motor B
    stepperB.setSpeed(0);
  }

  // Move both motors
  stepperA.runSpeed();
  stepperB.runSpeed();
}
