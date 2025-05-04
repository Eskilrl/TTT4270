
#include <Wire.h>
#include "SparkFun_BMP581_Arduino_Library.h"

//Code inspiration from https://www.electroniclinic.com/bosch-bmp585-barometric-pressure-sensor-with-arduino/#BOSCH_BMP585_Arduino_Code

BMP581 pressureSensor;
 
#define I2C_ADDRESS_1 0x47

const float R = 8.314;
const float g = 9.80665;
const float M = 0.0289644;

float pressureReadings[100];
int readingCount = 0;   

float temperatureReadings[1];
int readingCountT = 0;  

void setup() {
    Serial.begin(115200);
    Wire.begin();
    Serial.println("BMP585 Pressure & Temperature Sensor");
 
    // Scan for I2C devices
    Serial.println("Scanning for I2C devices...");
    for (byte address = 1; address < 127; address++) {
        Wire.beginTransmission(address);
        byte error = Wire.endTransmission();
        if (error == 0) {
            Serial.print("I2C device found at address 0x");
            if (address < 16) Serial.print("0");
            Serial.println(address, HEX);
        }
    }
 
    // Attempt to initialize the sensor with the first address
    Serial.println("Attempting to connect to sensor at 0x47...");
    if (pressureSensor.beginI2C(I2C_ADDRESS_1) == BMP5_OK) {
        Serial.println("BMP585 connected at address 0x47!");
    } else {
        // Attempt to initialize the sensor with the second address
        Serial.println("Attempting to connect to sensor at 0x7E...");
        if (pressureSensor.beginI2C(I2C_ADDRESS_1) == BMP5_OK) {
            Serial.println("BMP585 connected at address 0x7E!");
        } else {
            // Not connected, inform user
            Serial.println("Error: BMP581 not connected, check wiring and I2C address!");
            // Wait a bit to see if connection is established
            delay(1000);
        }
    }
 
    //checkCommunication(I2C_ADDRESS_1);
 
    // Register 0x18 FIFO Selection configuration
    // for pressure and temperature data
    writeRegister(I2C_ADDRESS_1, 0x18, 0b00000011);
    delay(100);
 
    // Register (0x31) DSP IIR Configuration
    // sets the filter Coefficient:15
    writeRegister(I2C_ADDRESS_1, 0x31, 0b00100100); 
    delay(100);
 
    // Register (0x36) Over-sampling rate (OSR) configuration
    // enable sensor pressure measurements
    // over sampling rates for temperature and pressure 64x
    writeRegister(I2C_ADDRESS_1, 0x36, 0b01110110);  //
    delay(100);
 
    // Write to register 0x37
    // this disables the deep sleep mode of the sensor
    // set the ODR to 1 Hz
    // set the power mode to normal
    writeRegister(I2C_ADDRESS_1, 0x37, 0b01110001); 
    delay(100);
}
 
void loop() {

    // Få målinger fra sensor
    bmp5_sensor_data data = {0,0};
    int8_t err = pressureSensor.getSensorData(&data);
 
    if(err == BMP5_OK) {
        // Acquisition succeeded, print temperature and pressure
        float currentTemperature = data.temperature; 
        Serial.print("Temperature (C): ");
        Serial.println(data.temperature);

        // Get and the raw pressure value
        uint32_t rawPressure = readPressure();
 
       //Serial.print("Raw Pressure: ");
       //Serial.println(rawPressure);
 
        // Convert raw pressure value to actual pressure
        float currentPressure = convertRawPressure(rawPressure);
        Serial.print("Actual Pressure (Pa): ");
        Serial.println(currentPressure);

        //Gjennomsnitt, pressure
        if (readingCount < 100) {
            pressureReadings[readingCount] = currentPressure;
            readingCount++;
        } else {
            // Finner gjennomsnittet av trykekt av de 100 første målingene - fordi det er stort avvikk mellom verdiene når trykket måles i luft og står stille i en stund
            float sum = 0;
            for (int i = 0; i < 100; i++) {
                sum += pressureReadings[i];
            }
            float averagePressure = sum / 100.0;
            Serial.print("Gjennomsnittstrykk 100 første (Pa): ");
            Serial.println(averagePressure);

            
        if (readingCountT < 1) {
          temperatureReadings[readingCountT] = currentTemperature;
          readingCountT++;
        }
          else{
            float referenceTemperature = temperatureReadings[0];
            float height = calculateHeight(currentPressure, currentTemperature, averagePressure, referenceTemperature);
            Serial.print("Height (m): ");
            Serial.println(height);

            Serial.print("referenceTemperature: ");
            Serial.println(referenceTemperature);
    Serial.println("-----------------------------------------------");
          }

        }
        
    } else {
        // Acquisition failed, most likely a communication error (code -2)
        Serial.print("Error getting data from sensor! Error code: ");
        Serial.println(err);
    }
    //delay(100); 
}
 
void writeRegister(uint8_t deviceAddress, uint8_t registerAddress, uint8_t value) {
    Wire.beginTransmission(deviceAddress);
    Wire.write(registerAddress); // Register address
    Wire.write(value);           // Value to write
    Wire.endTransmission();
}
 
uint8_t readRegister(uint8_t deviceAddress, uint8_t registerAddress) {
    Wire.beginTransmission(deviceAddress);
    Wire.write(registerAddress); // Register address
    Wire.endTransmission();
 
    Wire.requestFrom(deviceAddress, (uint8_t)1); // Request 1 byte
 
    if (Wire.available()) {
        return Wire.read(); // Read and return the byte
    } else {
        Serial.print("Failed to read from address 0x");
        Serial.println(deviceAddress, HEX);
        return 0; // Return 0 if read failed
    }
}
 
void checkCommunication(uint8_t address) {
    Wire.beginTransmission(address);
    Wire.write(0x37); // Example register, replace with a known readable register from BMP585 datasheet
    Wire.endTransmission();
    Wire.requestFrom(address, 1);
 
    if (Wire.available()) {
        uint8_t data = Wire.read();
        Serial.print("Status Register: 0x");
        Serial.println(data, HEX);
    } else {
        Serial.print("Failed to read from address 0x");
        Serial.println(address, HEX);
    }
}
 
uint32_t readPressure() {
    
    byte data[3];
 
    // Read pressure registers (0x20 to 0x22)
    Wire.beginTransmission(I2C_ADDRESS_1);
    Wire.write(0x20);  // Start from register 0x20 for pressure LSB
    Wire.endTransmission(false);  // End I2C transmission without releasing the bus
 
    Wire.requestFrom(I2C_ADDRESS_1, 3);  // Request 3 bytes of data
 
    if (Wire.available() == 3) {
        data[0] = Wire.read();
        data[1] = Wire.read();
        data[2] = Wire.read();
    }
 
    // Combine data to get pressure value
    uint32_t pressure = ((uint32_t)data[2] << 16) | ((uint32_t)data[1] << 8) | data[0];
 
    return pressure;
}
 
float convertRawPressure(uint32_t rawPressure) {
    // Convert raw pressure using the provided formula
    float pressure = rawPressure / 64.0; // Equivalent to dividing by 2^6
 
    return pressure;
}

/* 
Over vannet
float calculateHeight(float currentPressure, float currentTemperature, float averagePressure, float referenceTemperature) {
    const float L = 0.0065;    // Temperaturgradient i K/m
    const float R = 8.3144;    // Spesifikk gass konstant J/(kg K)
    const float g = 9.80665;      // Gravitasjon m/s²

    //Høyde i meter
    float altitude = (referenceTemperature / L) * (pow((currentPressure / averagePressure), (R*L / g)) - 1);
    return altitude;
}
*/ 
//Under vannet
float calculateHeight(float currentPressure, float currentTemperature, float averagePressure, float referenceTemperature) {
    //float p = 1000 - 0.000214*(currentTemperature - referenceTemperature);
    const int p = 1000; // Generell verdi for tetthet for vann
    const float g = 9.80665;   // Gravitasjon m/s²
    //Høyde i meter
    float altitude = (currentPressure - averagePressure)/(p*g) //Ble valgt å bruke en generell formell, uten Temperatur siden det er en prototype. Men p kan bli tilpasset temperaturen.
    return altitude;
