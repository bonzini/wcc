#include <Wire.h>

const int WII_SLAVE_ADDR = 0x52;

bool wii_read(int reg, char *c, int n)
{
  Wire.beginTransmission(WII_SLAVE_ADDR);
  Wire.write(reg);
  Wire.requestFrom(WII_SLAVE_ADDR, n);
  int error = Wire.endTransmission();
  if (error != 0)
    return false;

  for (int i = 0; i < n; i++)
    c[i] = Wire.read();
  return true;
}

bool wii_read(int reg, int n)
{
  Wire.beginTransmission(WII_SLAVE_ADDR);
  Wire.write(reg);
  Wire.requestFrom(WII_SLAVE_ADDR, n);
  int error = Wire.endTransmission();
  if (error != 0)
    return false;

  for (int i = 0; i < n; i++)
    Wire.read();
  return true;
}

bool wii_init_slave() {
  Wire.beginTransmission(WII_SLAVE_ADDR);
  Wire.write(0xF0);
  Wire.write(0x55);
  int error = Wire.endTransmission();
  if (error != 0)
    return false;

  Wire.beginTransmission(WII_SLAVE_ADDR);
  Wire.write(0xFB);
  Wire.write(0x00);
  error = Wire.endTransmission();
  if (error != 0)
    return false;

  wii_read(0xFA, 6);
  wii_read(0, 6);
  return true;
}
