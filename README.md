This is the repository for a small Raspberry Pi/ESP8266 project I am
making.

The idea is to connect two gamepads wirelessly to the Raspberry Pi.
Of course I could just use a Wiimote and a Bluetooth dongle, but as
I am trying to learn things.  So I plan to connect the ESP8266 to two
Wii Classic Controllers, which speak I2C; the ESP8266 then sends events
as UDP packets over wifi; on the Raspberry Pi side, a simple C
program (wcc-client) runs on the Raspberry Pi and exposes a virtual
gamepad via /dev/uinput.

To simplify the code on the microcontroller, the UDP protocol is
simply the I2C packets.  For now, I am developing the client using
an "emulated" gamepad, wcc-server: this is a Linux program that
connects to /dev/input/eventNN and converts keypresses to I2C packets.

The next steps include:

* adding support for analog sticks, which requires wcc-client to
calibrate them on startup (and perhaps also when the HOME key is
pressed, as an emergency measure)

* writing the ESP8266 software

* building a nice enclosure for the thing
