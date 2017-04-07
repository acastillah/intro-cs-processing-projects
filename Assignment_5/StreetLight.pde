class StreetLight {

  //---Define class variables here---
  boolean on;
  float px, py, tall;
  color fill_lamp = color(30);
  color strokelamp = color(0);
  color bulb = color(250,150,0);
  float ratio;
  color shadow = color(130, 90, 50);
  color sky = color(118,88,91);
 // constructor
   StreetLight(float px, float b, float c) {
    //---define your constructor and initial values here---   
   this.px=px;
   py=b;
   tall=c;
  ratio = tall/18;
    on = false;
   }

 boolean isOn() {
   return on;
   }

 void turnOn() {
   on = true;
   bulb = color(250,150,0);
   shadow = color(130, 90, 50);
   sky = color(118,88,91);
   }

 void turnOff() {
   on = false;
   bulb = color(50);
    fill(bulb,10);
noStroke();
ellipse(px,py+(ratio*3.8),ratio*1.3,ratio*1.3);
shadow = color(10,0);
sky = color(10,0);
   }

 void display() {
   drawLight();
   }

 void drawLight() {

   noStroke();
   fill(sky);
 ellipse(px,py+2.7*ratio,ratio*7,ratio*7);
   
   //shadow
    noStroke();
  fill(shadow);
    ellipse(px,py+ratio*17.6,ratio*7,2*ratio);
   
   strokeWeight(3);
  fill(fill_lamp);

//base
stroke(strokelamp);
ellipse(px,py+ratio*17.5,ratio*3,ratio);
ellipse(px,py+ratio*17.2,ratio*2.5,ratio*.8);
noStroke();
quad(px-(ratio*1.2),py+ratio*17,px-(.75*ratio),py+ratio*15.9,px+(.75*ratio),py+ratio*15.9,px+(ratio*1.2),py+ratio*17);

stroke(strokelamp);
ellipse(px,py+ratio*15.65,ratio*1.75,ratio/1.25);
ellipse(px,py+ratio*15.5,ratio*1.75,ratio/2);

noStroke();
quad(px-ratio/2.5,py+ratio*14.5,px-ratio/1.7,py+ratio*15.5,px+ratio/1.7,py+ratio*15.5,px+ratio/2.5,py+ratio*14.5);

stroke(strokelamp);
line(px-ratio/2.5,py+ratio*14.5,px-ratio/1.7,py+ratio*15.5);
line(px+ratio/2.5,py+ratio*14.5,px+ratio/1.7,py+ratio*15.5);

line(px-(.75*ratio),py+ratio*15.9,px-(ratio*1.2),py+ratio*17);
line(px+(.75*ratio),py+ratio*15.9,px+(ratio*1.2),py+ratio*17);

rect(px-ratio/2.5,py+(ratio*5.5),ratio*2/2.5,ratio*9);

ellipse(px,py,5,5);
line(px,py,px,py+ratio);
triangle(px,py+ratio,px-(1.5*ratio),py+(ratio*2.8),px-tall/100,py+(2.3*ratio));
triangle(px,py+ratio,px+(1.5*ratio),py+(ratio*2.5),px-tall/100,py+(2.3*ratio));
line(px-(.75*ratio),py+(ratio*5),px+(.9*ratio),py+(ratio*4.9));
rect(px-ratio/4,py+(ratio*4.5),ratio/2,ratio);

strokeWeight(1);
ellipse(px,py+(ratio*3.8),ratio*1.3,ratio*1.3);


fill(bulb);
noStroke();
ellipse(px,py+(ratio*3.8),ratio*1.3,ratio*1.3);


strokeWeight(3);
stroke(strokelamp);
noFill();
beginShape();
vertex(px-(1.5*ratio),py+(ratio*2.8));
vertex(px-(.75*ratio),py+(ratio*5));
vertex(px,py+(ratio*4.8));
vertex(px+(.9*ratio),py+(ratio*4.9));
vertex(px+(1.5*ratio),py+(ratio*2.5));
vertex(px-tall/100,py+(2.3*ratio));
vertex(px,py+(ratio*4.8));
endShape();

 }

} // end of class StreetLight
