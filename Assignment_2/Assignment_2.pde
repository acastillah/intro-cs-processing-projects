/*
Assignment 2
Name: Adriana Castilla Hernandez
E-mail: acastillah@brynmawr.edu
Course: CS 110 - Section 1
Submitted: 9/25/2013
*/

void setup(){
  size(500,500);
  smooth();;
 background(30,20,80);
  }

void draw(){
 
  owl();
  tree();  
}

void mousePressed(){
  //I chose the RGB values to be random, but still within numbers that would give yellow tones.
  fill(random(200,255),random(150,200),random(5,20),random(255));
  star(mouseX,mouseY,random(5,25));//Small sizes

}

void star(float x, float y, float l){
  float lt=(.95*l)/.6;//x and y are position, while l is the length of one of the sides of the pentagon where the star is inscribed
  float h=sqrt(sq(lt)-sq(l));//h is the height of the tall triangle inscribed in the pentagon
  float hc=sqrt(sq(l)-(sq(lt)/3.5));//hc is the height of the small triangles, which are the peaks of the star
  
  beginShape();//star
  noStroke();
  vertex(x,y);
  vertex(x-(l/2),y+h);
  vertex(x+(lt/2),y+hc);
  vertex(x-(lt/2),y+hc);
  vertex(x+(l/2),y+h);
  endShape();
  
}

void tree(){
  beginShape();//used curves creatively, finding shapes I liked for the tree
  fill(94,46,6);
vertex(180,0);
vertex(165,20);
curveVertex(165,20);
curveVertex(160,30);
curveVertex(130,40);
curveVertex(90,60);
curveVertex(60,100);
curveVertex(55,120);
curveVertex(50,150);
curveVertex(48,180);
curveVertex(48,210);
curveVertex(53,270);
curveVertex(65,270);
curveVertex(190,260);
curveVertex(270,280);
curveVertex(300,280);
curveVertex(340,260);
curveVertex(345,262);
curveVertex(340,265);
curveVertex(300,290);
curveVertex(250,285);
curveVertex(220,278);
curveVertex(180,280);
curveVertex(140,290);
curveVertex(100,300);
curveVertex(55,350);
curveVertex(70,470);
curveVertex(70,470);
vertex(75,500);
vertex(0,500);
vertex(0,0);
vertex(40,0);
vertex(45,60);
vertex(50,60);
curveVertex(40,80);
curveVertex(50,45);
curveVertex(90,25);
curveVertex(120,15);
curveVertex(140,10);
curveVertex(160,0);
curveVertex(175,-20);

endShape();
}

void owl(){

  beginShape();//the body outline of the owl

 stroke(0);
fill(150,80,10);
curveVertex(100,80);
curveVertex(100,80);
curveVertex(90,110);
curveVertex(80,140);
curveVertex(75,180);
curveVertex(80,240);
curveVertex(95,270);
curveVertex(125,300);
curveVertex(135,310);
curveVertex(150,320);
curveVertex(165,310);
curveVertex(175,300);
curveVertex(205,270);
curveVertex(220,240);
curveVertex(225,180);
curveVertex(220,140);
curveVertex(210,110);
curveVertex(200,80);
curveVertex(200,80);
curveVertex(150,120);
curveVertex(100,80);
curveVertex(100,80);

endShape();//the inside of the body of the owl

beginShape();
fill(180,140,70);
curveVertex(150,300);
curveVertex(150,300);
curveVertex(105,250);
curveVertex(100,210);
curveVertex(107,180);
curveVertex(115,170);
curveVertex(120,167);
curveVertex(140,165);
curveVertex(150,165);
curveVertex(160,165);
curveVertex(180,167);
curveVertex(185,170);
curveVertex(192,180);
curveVertex(199,210);
curveVertex(194,250);
curveVertex(150,300);
curveVertex(150,300);

endShape();

//the eyes of the owl
fill(245,231,147);
ellipse(127,142,40,40);
ellipse(175,142,40,40);
fill(0);
ellipse(130,140,20,20);
ellipse(172,140,20,20);

//the beak of the owl
fill(240,190,30);
triangle(152, 165,145,154,159,154);
}

