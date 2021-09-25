
#include <ESP8266WiFi.h>
#include <PubSubClient.h>

const char* WIFI_SSID     = "****";
const char* WIFI_PASSWORD = "****";

const char* mqtt_server   = "mqtt.example.net";
const char* mqtt_user     = "****";
const char* mqtt_pass     = "****";

WiFiClient espClient;
PubSubClient client(mqtt_server, 1883, espClient);

const int WATER_NOT_FOUND = 1;

void setup() {
  pinMode(D1, INPUT);

  Serial.begin(115200);
  while (!Serial) {}
  Serial.println("");
}

void wifi_connect() {
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

void wifi_disconnect() {

  //WiFi.printDiag(Serial);
  //WiFi.disconnect();
  //delay(5000);
  //WiFi.printDiag(Serial);
  //
  //while (WiFi.status() != WL_DISCONNECTED) {
  //  delay(500);
  //  Serial.print(".");
  //}
}

void mqtt_connect() {
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    String clientId = "WaterSensor1";

    if (client.connect(clientId.c_str(), mqtt_user, mqtt_pass)) {
      Serial.println("connected");
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      delay(5000);
    }
  }
}

void loop() {
  int sensor_value;
  char buffer[64];

  sensor_value = digitalRead(D1);
  Serial.print("sensor value: ");
  Serial.println(sensor_value);

  if(WATER_NOT_FOUND != sensor_value) {
    wifi_connect();
    mqtt_connect();
    client.loop();

    sprintf(buffer, "%d", sensor_value);
    client.publish("sensor", buffer, true);
    delay(5000);
  }

  ESP.deepSleep(10e6);
}
