/////////////////////////////////////////////////////////////////////////////
//
// ArduSpinner.ino
// (c) Juan M. Casillas 2019
// Implements a Dial (aka spinner) input control as Mouse input (X Axis)
//
// Support two rotary encoders, one for the X-axis, another one for the Y-axis
//
/////////////////////////////////////////////////////////////////////////////

#include <ClickEncoder.h>
#include <Mouse.h>
#include <TimerOne.h>

#define TIMER1_INTERVAL 1000
#define PIN_XA 2
#define PIN_XB 3
#define PIN_XBUTTON 4
#define PIN_YA 6
#define PIN_YB 7
#define PIN_YBUTTON 7

//#define RELEASE 1

ClickEncoder *encoderX;
ClickEncoder *encoderY;

int16_t lastX, valueX;
int16_t sign_valueX;
int16_t abs_valueX;
int16_t lastY, valueY;
int16_t sign_valueY;
int16_t abs_valueY;
bool mouse_move;

void timerIsr() {
    encoderX->service();
    encoderY->service();
}

void setup() {
    encoderX = new ClickEncoder(PIN_XA, PIN_XB, PIN_XBUTTON, 1);
    encoderX->setAccelerationEnabled(true);
    
    encoderY = new ClickEncoder(PIN_YA, PIN_YB, PIN_YBUTTON, 1);
    encoderY->setAccelerationEnabled(true);

    lastX = lastY = -1;
    valueX = valueY = 0;
    mouse_move = false;

    Timer1.initialize(TIMER1_INTERVAL);
    Timer1.attachInterrupt(timerIsr);
    Mouse.begin();

#ifndef RELEASE
    Serial.begin(115200);
    Serial.println("Arduspinner Started");
#endif
}

void loop() {
    valueX = encoderX->getValue();
    valueY = encoderY->getValue();
    mouse_move = false;

    if (valueX != 0) {
        lastX = valueX;
        Mouse.move(valueX, 0, 0);
#ifndef RELEASE
        Serial.print("EncoderX Value: ");
        Serial.println(valueX);
#endif        
    }

    if (valueY != 0) {
        lastY = valueY;
        Mouse.move(0, valueY, 0);
#ifndef RELEASE
        Serial.print("EncoderY Value: ");
        Serial.println(valueY);
#endif
    }


}
