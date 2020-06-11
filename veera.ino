#include <Servo.h>   //including the servo library
Servo sg90;          //including a variable for servo named sg90
int servo_pin = 2;
void setup()
{
  sg90.attach(servo_pin);  //Giving the command to arduino to control pin 2 for servo
}
void loop()
{
  sg90.write(0);     // moving the servo at 0 degree
  delay(1000);
  sg90.write(45);     // moving the servo at 45 degree
  delay(1000);
  sg90.write(90);    // moving the servo at 90 degree
  delay(1000);        // wait for 1 second
  sg90.write(135);     // moving the servo at 135 degree
  delay(1000);
  sg90.write(180);   // moving the servo at 180 degrees
  delay(1000);        // wait for 1 sec
  }
