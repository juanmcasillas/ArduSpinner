// https://www.luisllamas.es/arduino-encoder-rotativo/

#include <TimerOne.h>
#include <Mouse.h>

const int channelPinA = 2;
const int channelPinB = 3;
 
const int timeThreshold = 0;
long timeCounter = 0;
 
const int maxSteps = 255;
volatile int ISRCounter = 0;
int counter = 0;
int xpos = 0;
 
bool IsCW = true;

#define TIMER1_INTERVAL 1000

void timerIsr() {
    ISRCounter = 0;
}

void setup()
{
   pinMode(channelPinA, INPUT_PULLUP);
   pinMode(channelPinB, INPUT_PULLUP);
   Serial.begin(115200);
   attachInterrupt(digitalPinToInterrupt(channelPinA), doEncodeA, CHANGE);
   attachInterrupt(digitalPinToInterrupt(channelPinB), doEncodeB, CHANGE);
   Timer1.initialize(TIMER1_INTERVAL);
   Timer1.attachInterrupt(timerIsr);  
   Mouse.begin();
}
 
void loop()
{
   if (counter != ISRCounter)
   {
      counter = ISRCounter;
      xpos = ( IsCW ? -1 * counter : counter ); 
      if (IsCW) Serial.print(" ->");
      if (!IsCW) Serial.print("<- ");
      Serial.println(ISRCounter);
      Mouse.move(xpos,0,0);
   }

}
 
void doEncodeA()
{
   if (millis() > timeCounter + timeThreshold)
   {
      if (digitalRead(channelPinA) == digitalRead(channelPinB))
      {
         IsCW = true;
        //if (ISRCounter + 1 <= maxSteps) ISRCounter++;
        ISRCounter++;
      }
      else
      {
         IsCW = false;
         //if (ISRCounter - 1 > 0) ISRCounter--;
         ISRCounter++;
      }
      timeCounter = millis();
   }
}
 
void doEncodeB()
{
   if (millis() > timeCounter + timeThreshold)
   {
      if (digitalRead(channelPinA) != digitalRead(channelPinB))
      {
         IsCW = true;
         //if (ISRCounter + 1 <= maxSteps) ISRCounter++;
         ISRCounter++;
      }
      else
      {
         IsCW = false;
         //if (ISRCounter - 1 > 0) ISRCounter--;
         ISRCounter++;
      }
      timeCounter = millis();
   }
}