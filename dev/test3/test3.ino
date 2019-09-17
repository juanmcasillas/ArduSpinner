const int channelPinA = 2;
const int channelPinB = 3;
const int pushPIN = 4; 

unsigned char stateChannelA;
unsigned char stateChannelB;
unsigned char prevStateChannelA = 0;
 
const int maxSteps = 255;
int prevValue;
int value;
 
const int timeThreshold = 15; 
unsigned long currentTime;
unsigned long loopTime;
 
bool IsCW = true;
 
void setup() {
   Serial.begin(9600);
   pinMode(channelPinA, INPUT);
   pinMode(channelPinB, INPUT);
   currentTime = millis();
   loopTime = currentTime;
   value = 0;
   prevValue = 0;
}
 
void loop() {
   currentTime = millis();
   if (currentTime >= (loopTime + timeThreshold))
   {
      stateChannelA = digitalRead(channelPinA);
      stateChannelB = digitalRead(channelPinB);
      if (stateChannelA != prevStateChannelA)  // Para precision simple if((!stateChannelA) && (prevStateChannelA))
      {
         if (stateChannelB) // B es HIGH, es CW
         {
            bool IsCW = true;
            if (value + 1 <= maxSteps) value++; // Asegurar que no sobrepasamos maxSteps
         }
         else  // B es LOW, es CWW
         {
            bool IsCW = false;
            if (value - 1 >= 0) value = value--; // Asegurar que no tenemos negativos
         }
 
      }
      prevStateChannelA = stateChannelA;   // Guardar valores para siguiente
 
      // Si ha cambiado el valor, mostrarlo
      if (prevValue != value)
      {
         prevValue = value;
         Serial.println(value);
 
      }
 
      loopTime = currentTime;  // Actualizar tiempo
   }
   
   // Otras tareas
}