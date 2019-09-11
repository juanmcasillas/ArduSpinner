#pragma once
 
class Encoder {
public:
  long _counter = 0;
  Encoder (uint8_t pinA,uint8_t pinB, uint8_t pinSW, bool pullup = false, uint16_t debounceDelay = 50)
    : _pinA(pinA), _pinB(pinB), _pinSW(pinSW), _state(LOW), _lastState(LOW),
      _lastMillis(0), _debounceDelay(debounceDelay),
      _lastDebounceTime(0) {
    pinMode(_pinA, INPUT);
    pinMode(_pinB, INPUT);
    if (pullup == true) {
      pinMode(_pinSW, INPUT_PULLUP);
    } else {
      pinMode(_pinSW, INPUT);
    }
    digitalWrite(_pinSW, LOW);
  }
 
  long readCount(){
    return _counter;
  }
   
  bool read(){
    byte DialPos = (digitalRead(_pinA) << 1) | digitalRead(_pinB); bool dir; 
    if (DialPos == 3 && _Last_DialPos == 1) { 
      _counter--; 
      dir = false; 
    } 
    if (DialPos == 3 && _Last_DialPos == 2) {
       _counter++; 
       dir = true; 
    } 
    _Last_DialPos = DialPos; return dir; 
  } // Debounces the button and returns the state if it was just changed. 
    
   bool check(bool triggerState = LOW) { 
      bool reading = digitalRead(_pinSW); // Checks if the buttons has changed state 
      if (reading != _lastState) {  
         _lastDebounceTime = millis(); 
      } // Checks if the buttons hasn't changed state for '_debounceDelay' milliseconds. 
      if ((millis() - _lastDebounceTime) > _debounceDelay) {
      // Checks if the buttons has changed state
      if (reading != _state) {
        _state = reading;
        return _state;
      }
    }
    _lastState = reading;
    // If this code is reached, it returns the normal state of the button.
    if (triggerState == HIGH) {
      return LOW;
    } else {
      return HIGH;
    }
  }
 
private:
  const uint8_t _pinA, _pinB, _pinSW;
  bool _state;
  bool _lastState;
  byte _Last_DialPos;
  uint32_t _lastMillis;
  uint16_t _debounceDelay;
  uint32_t _lastDebounceTime;
};