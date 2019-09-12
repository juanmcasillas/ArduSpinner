
#define ENC_DECODER (1 << 2)

#include <ClickEncoder.h>
#include <TimerOne.h>
#include <Mouse.h>

#define TIMER1_INTERVAL 1000
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
  Timer1.initialize(TIMER1_INTERVAL);
  Timer1.attachInterrupt(timerIsr);  
  last = -1;
  value = 0;
  Mouse.begin();
  Serial.println("Arduspinner Started");
}

void loop() {  
  //
  // use deltas 
  // value += encoder->getValue();
  value = encoder->getValue();
  
  if (value != 0) {
    last = value;
    Serial.print("Encoder Value: ");
    Serial.println(value);
    Mouse.move(value,0,0);
  }
  
  // don't use the button feature for now, only for reset in DEBUG
  
  ClickEncoder::Button b = encoder->getButton();
  if (b != ClickEncoder::Open) {
     switch (b) {
      case ClickEncoder::Clicked:
        value = 0;
        break;
      case ClickEncoder::Pressed:
      case ClickEncoder::Held:
      case ClickEncoder::Released:
      case ClickEncoder::DoubleClicked:
          //Serial.println("ClickEncoder::DoubleClicked");
          //encoder->setAccelerationEnabled(!encoder->getAccelerationEnabled());
          //Serial.print("  Acceleration is ");
          //Serial.println((encoder->getAccelerationEnabled()) ? "enabled" : "disabled");
        break;
    }
  }    
}
