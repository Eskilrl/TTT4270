#include <Arduino.h>
#include <HardwareSerial.h>
#include <WiFi.h>
#include <PubSubClient.h>
#include <Wire.h>

//I am sorry, this will be a long main function:)


//Define UART constants

#define TXD1 19
#define RXD1 21
#define interuptPin 18

#define Serial_BAUD 115200

const int PACKET_SIZE = 20;
uint8_t buffer[PACKET_SIZE];


const char* ssid = "Eskil_iPhone";
const char* password = "12341234";

const char* mqtt_server = "172.20.10.7";

WiFiClient espClient;
PubSubClient client(espClient);
long lastMsg = 0;
char msg[50];
int value = 0;



//Define storage container (Might not use)

byte tx[] = {0x00, 0x00, 0x00, 0x00, 0xff,
             0x00, 0x00, 0x00, 0x00, 0xff,
             0x00, 0x00, 0x00, 0x00, 0xff,
             0x00, 0x00, 0x00, 0x00, 0xff};

//Normal ESP32 setup 

void IRAM_ATTR isr() {
	ESP.restart();
}

void reverseBuffer(uint8_t* buf, int size) {
  for (int i = 0; i < size / 2; i++) {
    uint8_t temp = buf[i];
    buf[i] = buf[size - 1 - i];
    buf[size - 1 - i] = temp;
  }
}

void setup_wifi() {
  delay(10);
  // We start by connecting to a WiFi network
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void setup() {
  Serial.begin(115200);
  Serial2.begin(115200, SERIAL_8N1, RXD1, TXD1);
  pinMode(interuptPin, INPUT);
  attachInterrupt(interuptPin, isr, RISING);

  setup_wifi();
  client.setServer(mqtt_server, 1883);

  while (!client.connected()) {
    Serial.println("MQTT not connected. Trying to reconnect...");
    if (client.connect("ESP32Client")) {
      Serial.println("Connected to MQTT broker!");
      return;
    } else {
      Serial.print("Failed to connect. State: ");
      Serial.println(client.state());
      delay(2000); // Wait before retrying
    }
  }

  Serial.println("Setup Ready!");

}

void loop() {

  //Reconnect if mqtt disconnected
  if(!client.connected()){
  while (!client.connected()) {
    Serial.println("MQTT not connected. Trying to reconnect...");
    if (client.connect("ESP32Client")) {
      Serial.println("Connected to MQTT broker!");
      return;
    } else {
      Serial.print("Failed to connect. State: ");
      Serial.println(client.state());
      delay(2000); // Wait before retrying
    }
  }
  }

  if (Serial2.available() >= PACKET_SIZE) {
    int bytesRead = Serial2.readBytes(buffer, PACKET_SIZE);
    if (bytesRead == PACKET_SIZE) {
      //reverseBuffer(buffer, PACKET_SIZE);
      Serial.print("Received: ");
      for (int i = 0; i < PACKET_SIZE; i++) {
        Serial.printf("0x%02X ", buffer[i]);
      }
      if(client.publish("SPS/TimeVector",buffer, PACKET_SIZE)){
        Serial.println("Sendt message!");
      }
      Serial.println();
    } else {
      Serial.println("Error: Did not read full 20 bytes.");
    }
}
}


