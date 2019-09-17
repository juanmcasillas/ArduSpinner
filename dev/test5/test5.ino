#include <ClickEncoder.h>
#include <TimerOne.h>


#define PIN_A 2
#define PIN_B 3
#define PIN_BUTTON 4
ClickEncoder *encoder;
int16_t last, value;

void timerIsr() {
  encoder->service();
}

void setup() {
  Serial.begin(115200);
  encoder = new ClickEncoder(PIN_A, PIN_B, PIN_BUTTON);
  Timer1.initialize(1000);
  Timer1.attachInterrupt(timerIsr); 
  
  last = -1;
}

void loop() {  
  value += encoder->getValue();
  
  if (value != last) {
    last = value;
    Serial.print("Encoder Value: ");
    Serial.println(value);
  }
  
  ClickEncoder::Button b = encoder->getButton();
  if (b != ClickEncoder::Open) {
    Serial.print("Button: ");
    #define VERBOSECASE(label) case label: Serial.println(#label); break;
    switch (b) {
      
      case ClickEncoder::Clicked:
        value = 0;
        Serial.println("Value reset");
        break;

      VERBOSECASE(ClickEncoder::Pressed);
      VERBOSECASE(ClickEncoder::Held);
      VERBOSECASE(ClickEncoder::Released);
      
      case ClickEncoder::DoubleClicked:
          Serial.println("ClickEncoder::DoubleClicked");
          encoder->setAccelerationEnabled(!encoder->getAccelerationEnabled());
          Serial.print("  Acceleration is ");
          Serial.println((encoder->getAccelerationEnabled()) ? "enabled" : "disabled");
        break;
    }
  }    
}
