This is the repository for my first ESP8266 project.
The idea is to connect two gamepads wirelessly to the Raspberry Pi.
Of course I could just use a Wiimote and a Bluetooth dongle, but
I am trying to learn things!  So I plan to connect the ESP8266 to two
Wii Classic Controllers, which speak I2C; the ESP8266 then sends events
as UDP packets over wifi; on the Raspberry Pi side, a simple C
program (wcc-client) runs on the Raspberry Pi and exposes a virtual
gamepad via /dev/uinput.

To simplify the code on the microcontroller, the UDP protocol is
simply the I2C packets.  I first developed the client using an
"emulated" gamepad, wcc-server: this is a Linux program that
connects to /dev/input/eventNN and converts keypresses to I2C packets.
You can also use it to play with a USB keyboard instead of a gamepad.

The ESP8266 expects gamepad 1 on GPIOs 14/2 (SCL/SDA) and gamepad 2
on pins 4/0.  I have designed a simple PCB that plugs on top of a
Sparkfun thing like a "shield" and automatically wires two I2C buses
to the right pins.  You can find it in the `eagle` subdirectory (when
I have some time I will redo it in KiCAD).

The ESP8266 sketch contains a simple configuration portal.  After
uploading the sketch, it will create an access point named "ESP8266 xxyy"
where xxyy are two hexadecimal digits.  Connect to the access point and
point the browser to 192.168.4.1; enter your SSID name and password and
wait for the ESP8266 to reboot.  However the IP of the client is hard-coded
in the sketch for now.

Configuration data is persistent as it's stored in the ESP8266 EEPROM.  To
clear it, ground pin 5 before powering the ESP8266; the EEPROM will be
cleared and the configuration portal will appear.  Failure to connect
to the stored SSID will trigger the configuration portal too.

The next steps include:

* adding support for analog sticks, which requires wcc-client to
calibrate them on startup (and perhaps also when the HOME key is
pressed, as an emergency measure)

* building a nice enclosure for the thing
