/*
 Fading

 This example shows how to fade an LED using the analogWrite() function.

 The circuit:
 * LED attached from digital pin 9 to ground.

 Created 1 Nov 2008
 By David A. Mellis
 modified 30 Aug 2011
 By Tom Igoe

 http://www.arduino.cc/en/Tutorial/Fading

 This example code is in the public domain.

 */

int potpin = 0;  // analog pin used to connect the potentiometer
int val = 15;    // variable to read the value from the analog pin

int pwmPin = 9;    // LED connected to digital pin 9

void setup() {
}

void loop() {
    // sets the value (range from 0 to 255):
    analogWrite(pwmPin, val);
    delay(10);
}


