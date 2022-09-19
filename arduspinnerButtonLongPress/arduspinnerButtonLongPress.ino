//////////////////////////////////////////////////////////////////////////////
///
/// @file arduspinnerButtonLongPress.ino
/// @author Juan M. Casillas (juanm.casillas@gmail.com)
/// @brief Implements a Dial (aka spinner) input control as Mouse input (X Axis)
/// @version 0.1
/// @date 2022/09/14
///
/// Implements a Dial (aka spinner) input control as Mouse input (X Axis)
/// Support button click. Also supports axis swap after Long Press (held)
/// requires a modification in the library.
/// 
/// ClickEncoder.cpp:19 #define ENC_HOLDTIME        1200  // report held button after 1.2s
///  
/// @copyright Copyright (c) 09/14/2022 Juan M. Casillas <juanm.casillas@gmail.com>
///
//////////////////////////////////////////////////////////////////////////////

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
int16_t swaped_axis;

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
    swaped_axis = 0; // use X as default
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
        // xval, yval, wheel
        if (swaped_axis == 0) {
            Mouse.move(value, 0, 0); // xaxis
        }
        else {
            Mouse.move(0, value, 0); // yaxis
        }
        #ifndef RELEASE
            Serial.print("Encoder Value: ");
            Serial.println(value);
            Serial.print("Swapped Axis?: ");
            Serial.println(swaped_axis);

        #endif
    }


    ClickEncoder::Button b = encoder->getButton();
    if (b != ClickEncoder::Open) {
        switch (b) {
        case ClickEncoder::Pressed:
        case ClickEncoder::Released:
            break;

        case ClickEncoder::Held:
            swaped_axis = !swaped_axis; // invert the value each time you held the button.
            break;

        case ClickEncoder::Clicked:
            // default action, send a standard click
            Mouse.click(MOUSE_LEFT);
            #ifndef RELEASE
                Serial.println("Button click");
            #endif
            break;
        case ClickEncoder::DoubleClicked:
            // example on double click, send RIGHT button click
            Mouse.click(MOUSE_RIGHT);
            #ifndef RELEASE
                Serial.println("Button double click");
            #endif
            break;
        }
    }    

}
