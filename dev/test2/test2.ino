// https://zaragozamakerspace.com/index.php/introduccion-al-rotary-encoder/

#include "Encoder.h"

Encoder rotary(2, 3, 4);
int prev = 0;
int cur = 1;
void setup() {
    Serial.begin(9600);
    Serial.println("Encoder starts");
}


void loop() {
    // put your main code here, to run repeatedly:
    rotary.read();

    if (rotary.check(HIGH)) {
        Serial.println("Check");
    }

    cur = rotary.readCount();
    if (prev != cur) {
        Serial.println(cur);
        prev = cur;
    }
}