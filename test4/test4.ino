/*
Rotary Encoder - Polling Example
    
The circuit:
* encoder pin A to Arduino pin 2
* encoder pin B to Arduino pin 3
* encoder ground pin to ground (GND)
*/

#include <MD_REncoder.h>
#include <Mouse.h>


// set up encoder object
MD_REncoder R = MD_REncoder(2, 3);

#define ENABLE_HALF_STEP 1
#define ENABLE_SPEED 1 
#define DEFAULT_PERIOD 200

int xpos = 0;
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
    xpos += (x == DIR_CW ? speed : -1 * speed);
    Mouse.move(xpos,0,0);
  }
}