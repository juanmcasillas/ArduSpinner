/////////////////////////////////////////////////////////////////////////////
//
// ArduSpinner.ino
// (c) Juan M. Casillas 2019
// Implements a Dial (aka spinner) input control as Mouse input (X Axis)
//
/////////////////////////////////////////////////////////////////////////////

#define WITHOUT_BUTTON 1

#include <ClickEncoder.h>
#include <Mouse.h>
#include <TimerOne.h>

#define TIMER1_INTERVAL 1000
#define PIN_A 2
#define PIN_B 3
#define PIN_BUTTON 4
//#define RELEASE 1

ClickEncoder *encoder;
int16_t last, value;
int16_t sign_value;
int16_t abs_value;

void timerIsr() {
    encoder->service();
}

void setup() {
    encoder = new ClickEncoder(PIN_A, PIN_B, PIN_BUTTON, 1);
    encoder->setAccelerationEnabled(true);
    Timer1.initialize(TIMER1_INTERVAL);
    Timer1.attachInterrupt(timerIsr);
    last = -1;
    value = 0;
    Mouse.begin();
#ifndef RELEASE
    Serial.begin(115200);
    Serial.println("Arduspinner Started");
#endif
}

void loop() {
    value = encoder->getValue();

    if (value != 0) {
        last = value;
        Mouse.move(value, 0, 0);

#ifndef RELEASE
        Serial.print("Encoder Value: ");
        Serial.println(value);
#endif
    }
}
