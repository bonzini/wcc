#include <EEPROM.h>
#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>

char *ssid = "";
char *password = "";
char epromData[256];

#define EEPROM_MAGIC 0x7d

// Try to read WiFi configuration data from EEPROM.  If successful, return
// true and point "ssid" and "password" to the values.  If the data is
// invalid, return false.
bool read_eeprom(void)
{
  EEPROM.begin(512);
  uint8_t magic = EEPROM.read(0);
  if (magic != EEPROM_MAGIC) {
    Serial.println("Bad magic " + String(magic));
    return false;
  }
  int zeros = 0;
  uint8_t checksum = EEPROM.read(1);
  for (int i = 2; i < 256; i++) {
    uint8_t value = EEPROM.read(i);
    epromData[i-2] = value;
    checksum += value;
    if (value == 0) {
      zeros++;
    }
    if (zeros == 2) {
      break;
    }
  }
  Serial.println("Zeroes: " + String(zeros));
  Serial.println("Checksum: " + String(checksum));
  if (zeros != 2 || checksum != 0) {
    return false;
  }
  ssid = epromData;
  password = epromData + strlen(ssid) + 1;
  Serial.println("SSID: " + String(ssid));
  Serial.println("Password: " + String(password));
  return true;
}

void invalidate_eeprom(void)
{
  // Invalidate EEPROM
  EEPROM.write(0, 0xFF);
  EEPROM.commit();
}

void clear_eeprom(void)
{
  EEPROM.begin(512);
  invalidate_eeprom();
  for (int i = 0; i < 512; i++)
    EEPROM.write(i, 0xFF);
  EEPROM.commit();
}

// Write "ssid" and "password" into EEPROM.  If successful, reboot.
// If there are problems, return false.
bool write_eeprom(String ssid, String password)
{
  EEPROM.begin(512);
  int ssid_len = ssid.length();
  int pwd_len = password.length();
  int total_len = ssid_len + 1 + pwd_len + 1;
  if (total_len + 2 > 256) {
    return false;
  }

  invalidate_eeprom();

  int checksum = 0;
  memset(epromData, 0, sizeof(epromData));
  for (int i = 0; i < ssid_len; i++)
    epromData[i] = ssid.charAt(i);
  for (int i = 0; i < pwd_len; i++)
    epromData[ssid_len + 1 + i] = password.charAt(i);
  for (int i = 0; i < total_len; i++) {
    uint8_t value = epromData[i];
    EEPROM.write(i+2, value);
    checksum -= value;
  }
  Serial.println("Saved SSID: " + String(ssid));
  Serial.println("Saved password: " + String(password));
  Serial.println("Checksum: " + String(checksum & 255, HEX));
  EEPROM.write(1, checksum);
  EEPROM.write(0, EEPROM_MAGIC);
  EEPROM.commit();
}

bool wifi_connect(void)
{
  // If no data in EEPROM, bring up captive portal
  if (!read_eeprom()) {
    Serial.println("EEPROM data not valid, entering AP mode\n");
    return false;
  }

  // If GPIO5 is grounded, bring up captive portal
  pinMode(5, INPUT_PULLUP);
  delay(100);
  if (digitalRead(5) == LOW) {
    Serial.println("GPIO5 is low, clearing EEPROM\n");
    clear_eeprom();
    pinMode(5, OUTPUT);
    return false;
  }
  pinMode(5, OUTPUT);

  // Got valid SSID and password, try to connect.
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  WiFi.printDiag(Serial);
  Serial.print("\nConnecting to "); Serial.println(ssid);
  uint8_t i = 0, st;
  do {
    // slow blink
    digitalWrite(5, HIGH);
    delay(500);
    digitalWrite(5, LOW);
    delay(500);
    st = WiFi.status();
  } while(st == WL_DISCONNECTED);
  if (st == WL_CONNECT_FAILED) {
    return false;
  }

  // short fast blink means that connection was successful
  for (i = 0; i < 10; i++) {
    digitalWrite(5, i & 1 ? HIGH : LOW);
    delay(50);
  }

  Serial.print("Connected, IP address: ");
  Serial.println(WiFi.localIP());
  return true;
}

ESP8266WebServer webServer(80);

// send HTML form
void handleCaptivePortalGet()
{
  String output =
"<html><head><title>ESP8266 WiFi configuration</title><body>"
"<form action=\"/post\" method=\"post\">";
  output += "<h1>WiFi setup</h1>";
  output += "<p><label for=\"ssid\">SSID:</label>";
  output += "<input id=\"ssid\" name=\"ssid\" value=\"";
  output += String(ssid);
  output += "\"><p><label for=\"pwd\">Password:</label>";
  output += "<input id=\"password\" name=\"password\" type=\"password\" value=\"";
  output += String(password);
  output += "\"><p><input type=\"submit\" value=\"Connect\">";
  webServer.send(200, "text/html", output);
}

// write SSID and password to EEPROM, then restart
void handleCaptivePortalPost()
{
  if (webServer.hasArg("ssid") && webServer.hasArg("password")) {
    String ssid = webServer.arg("ssid");
    String password = webServer.arg("password");
    if (write_eeprom(ssid, password)) {
      webServer.send(200, "text/html", "<html><head><body>Rebooting...");
      delay(1000);
      WiFi.softAPdisconnect(true);
      ESP.restart();
    }
  }
  
  // Short delay makes the user think that something happened
  delay(1000);
  webServer.sendHeader("Location", "/", true);
  webServer.send(302, "text/html", "<h1>302 Redirect");
}

void captive_portal_setup() {
  if (wifi_connect()) {
    return;
  }

  WiFi.mode(WIFI_AP);

  // Do a little work to get a unique-ish name. Append the
  // last two bytes of the MAC (HEX'd) to "ESP8266":
  uint8_t mac[WL_MAC_ADDR_LENGTH];
  WiFi.softAPmacAddress(mac);
  String macID = String(mac[WL_MAC_ADDR_LENGTH - 2], HEX) +
                 String(mac[WL_MAC_ADDR_LENGTH - 1], HEX);
  macID.toUpperCase();
  String ap_ssid_str = "ESP8266 " + macID;

  char ap_ssid[ap_ssid_str.length() + 1];
  memset(ap_ssid, 0, ap_ssid_str.length() + 1);
  for (int i = 0; i < ap_ssid_str.length(); i++)
    ap_ssid[i] = ap_ssid_str.charAt(i);

  WiFi.softAP(ap_ssid, "");

  webServer.on("/", HTTP_GET, handleCaptivePortalGet);
  webServer.on("/post", HTTP_POST, handleCaptivePortalPost);
  webServer.begin();
  for (;;) {
    // repeated quick blink means captive portal is active
    digitalWrite(5, HIGH);
    delay(50);
    digitalWrite(5, LOW);
    delay(500);
    webServer.handleClient();
  }

  // Run until the /post handler restarts the board.
}
