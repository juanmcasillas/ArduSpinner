/*
Rotary Encoder - Polling Example
    
The circuit:
* encoder pin A to Arduino pin 2
* encoder pin B to Arduino pin 3
* encoder ground pin to ground (GND)
*/

#include <MD_REncoder.h>
#include <Mouse.h>

// DT 2
// CLK 3

// set up encoder object
MD_REncoder R = MD_REncoder(2, 3);

#define ENABLE_HALF_STEP 0
#define ENABLE_SPEED 1 
#define DEFAULT_PERIOD 50

#define SCALE 1

void setup() 
{
  Serial.begin(57600);
  R.begin();
  //R.setPeriod(200);
  Mouse.begin();
}

void loop() 
{
  uint8_t x = R.read();
  
  if (x) 
  {
    //Serial.print(x == DIR_CW ? "\n+1" : "\n-1");
    int speed = R.speed();
    speed = (speed < 1 ? 1 : speed);
    int xpos = (x == DIR_CW ?  speed : -1 * speed);
    
    Mouse.move(xpos * SCALE ,0,0);
  }
}
