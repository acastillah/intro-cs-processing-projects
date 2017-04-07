/*
Assignment 6 Part 1
Name: Adriana Castilla Hernandez
E-mail: acastillah@brynmawr.edu
Course: CS 110 - Section 1
Submitted: 12/03/2013
*/

ACastillaThingy ACFish;    // An instance of ACastillaThingy will be called ACFish
float SIZE;      // The SIZE of the instance that will be created


void setup() {
  size(400,400);
  smooth();
  SIZE = 200;
  ACFish = new ACastillaThingy(SIZE,width/3,height/2);  // Create an instance with SIZE
}
// end of setup


void draw() {
  // display the creature
  background(50,200,250);
  ACFish.display();
} // end of draw



