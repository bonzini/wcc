#include <WiFiUdp.h>
#include <Wire.h>

const int SCL_1 = 14;
const int SDA_1 = 2;
const int SCL_2 = 0;
const int SDA_2 = 4;
const int GND_2 = 12;
const int Vcc_2 = 13;

bool have_gamepad1;
bool have_gamepad2;

void setup() {
  digitalWrite(GND_2, LOW);
  digitalWrite(Vcc_2, HIGH);
  pinMode(GND_2, OUTPUT);
  pinMode(Vcc_2, OUTPUT);

  Serial.begin(115200);
  while (!Serial);


  Serial.println("\n\nStarting");
  Wire.begin(SDA_1, SCL_1);
  have_gamepad1 = wii_init_slave();
  if (have_gamepad1) {
    Serial.println("Found gamepad 1");
  }
  Wire.begin(SDA_2, SCL_2);
  have_gamepad2 = wii_init_slave();
  if (have_gamepad2) {
    Serial.println("Found gamepad 2");
  }
  Serial.print("... initialization done\r\n");

  captive_portal_setup();
}

WiFiUDP udp;

void loop_one_gamepad(char *old, int port)
{
  char in[6];
  if (wii_read(0, in, 6) && memcmp(old, in, 6)) {
    memcpy(old, in, 6);
    IPAddress remote(192,168,10,179);
    udp.beginPacket(remote, port);
    udp.write(in, 6);
    udp.endPacket();
  }
}

void loop() {
  if (have_gamepad1) {
    static char old1[6];
    Wire.begin(SDA_1, SCL_1);
    loop_one_gamepad(old1, 40000);
  }
  if (have_gamepad2) {
    static char old2[6];
    Wire.begin(SDA_2, SCL_2);
    loop_one_gamepad(old2, 40001);
  }

  delay(33);
}
