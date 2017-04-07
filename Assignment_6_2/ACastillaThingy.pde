class ACastillaThingy {  // Definition of the creature ACastillaThingy
  
  //Define variables
  float size;//width
  float x,y;//location
  float theta;
  float r;
  float a,b;
  float ratio;
  float m;
  
  //constructor
  ACastillaThingy(float size1,float px,float py) {
  x=px;
  y=py;
  size=size1;  
 }

 void display() {
   if(width/3<x && x<width/2){
     puff();
   }
   else{
   drawFish();
   }
 } // display()
 
 void move(){
   if(width/3<x && x<width/2){
     x=x-.2;
   }
   else{
     x=x-2;
     y=y+cos(radians(x));
   }
  
   reappear();
   }

void reappear(){
    if((y-2*ratio)<5 && (x+size)<0 ){
    y=height;
  }
  if ((x+size)<0){
    x=width;
  }
  
}

void puff(){
  stroke(70,125,15);
  fill(180,210,60,230);
  upperflipper();
  fill(130,170,70);
  innerupper();
  fill(180,210,60,230);
  bottomflipper();
  fill(130,170,70);  
  innerbottom();
  fill(200,250,150);
  puffbottom();
  fill(140,200,70);
  top();
  fill(180,210,60,190);
  tail();
  fill(130,170,70);
  innertail();
  stroke(0);
  fill(180,210,60,230);
  stroke(80,135,15);
  middleflipper();
  fill(130,170,70);
  innermiddle();
  eye(); 
  mouth();
  
}

void drawFish(){
  ratio = size/10;
  stroke(70,125,15);
  fill(180,210,60,230);
  upperflipper();
  fill(130,170,70);
  innerupper();
  fill(180,210,60,230);
  bottomflipper();
  fill(130,170,70);  
  innerbottom();
  fill(200,250,150);
  bottom();
  fill(140,200,70);
  top();
  fill(180,210,60,190);
  tail();
  fill(130,170,70);
  innertail();
  fill(180,210,60,230);
  stroke(80,135,15);
  middleflipper();
  fill(130,170,70);
  innermiddle();
  eye(); 
  mouth();
  
}

void upperflipper(){
    //upper flipper
  beginShape();
  curveVertex(x+6.5*ratio,y-3*ratio);
  curveVertex(x+6.5*ratio,y-3*ratio);
  curveVertex(x+6.45*ratio,y-3.2*ratio);
  curveVertex(x+7*ratio,y-3.7*ratio);
  curveVertex(x+7.2*ratio,y-4.1*ratio);
  curveVertex(x+7*ratio,y-4.5*ratio);
  curveVertex(x+6.5*ratio,y-4.8*ratio);
  curveVertex(x+6*ratio,y-5*ratio);
  curveVertex(x+5.7*ratio,y-4.7*ratio);
  curveVertex(x+6*ratio,y-3.5*ratio);
  curveVertex(x+5.8*ratio,y-3*ratio);
  curveVertex(x+5.8*ratio,y-3*ratio);
  endShape();
}

void innerupper(){
  beginShape();
  curveVertex(x+6*ratio,y-3*ratio);
  curveVertex(x+6.1*ratio,y-3*ratio);
  curveVertex(x+6.37*ratio,y-3.2*ratio);  
  curveVertex(x+6.7*ratio,y-3.8*ratio);
  
  curveVertex(x+6.37*ratio,y-3.5*ratio);
  curveVertex(x+6.45*ratio,y-4.1*ratio);  
  
  curveVertex(x+6.2*ratio,y-3.55*ratio);

  curveVertex(x+6.1*ratio,y-4*ratio);
  
  curveVertex(x+6.05*ratio,y-3*ratio);
  curveVertex(x+6*ratio,y-3*ratio);
  endShape();
}

void bottomflipper(){
 
  //bottom flipper
  beginShape();
  curveVertex(x+6.4*ratio,y-1.9*ratio);
  curveVertex(x+6.4*ratio,y-1.9*ratio);
  curveVertex(x+6.6*ratio,y-1.6*ratio);
  curveVertex(x+7.2*ratio,y-1.4*ratio);
  curveVertex(x+6.8*ratio,y-.8*ratio);
  curveVertex(x+6.2*ratio,y-.7*ratio);
  curveVertex(x+6.1*ratio,y-1.3*ratio);
  curveVertex(x+5.8*ratio,y-1.5*ratio);
  curveVertex(x+5.8*ratio,y-1.5*ratio);
  endShape();
}

void innerbottom(){
  beginShape();
  curveVertex(x+6.4*ratio,y-1.9*ratio);
  curveVertex(x+6.4*ratio,y-1.9*ratio);
  curveVertex(x+6.5*ratio,y-1.5*ratio);
  curveVertex(x+6.8*ratio,y-1.35*ratio);
  curveVertex(x+6.5*ratio,y-1.35*ratio);
  curveVertex(x+6.65*ratio,y-1.15*ratio);
  curveVertex(x+6.42*ratio,y-1.2*ratio);
  curveVertex(x+6.38*ratio,y-.95*ratio);
  curveVertex(x+6*ratio,y-1.9*ratio);
  curveVertex(x+6*ratio,y-1.9*ratio);  
  endShape();
}

void bottom(){
  //Bottom
  beginShape();
  curveVertex(x,y-3*ratio);
  curveVertex(x,y-3*ratio);
  curveVertex(x+ratio,y-ratio);
  curveVertex(x+3*ratio,y);
  curveVertex(x+5*ratio,y-.5*ratio);
  curveVertex(x+7*ratio,y-2*ratio);
  curveVertex(x+7.5*ratio,y-2.3*ratio);
  curveVertex(x+8.2*ratio,y-2*ratio);
  endShape(CLOSE);
}

void puffbottom(){
  beginShape();
  curveVertex(x,y-3*ratio);
  curveVertex(x,y-3*ratio);
  curveVertex(x+ratio,y-.2*ratio);
  curveVertex(x+3*ratio,y+.7*ratio);
  curveVertex(x+5*ratio,y+.2*ratio);
  curveVertex(x+7*ratio,y-2*ratio);
  curveVertex(x+7.5*ratio,y-2.3*ratio);
  curveVertex(x+8.2*ratio,y-2*ratio);
  endShape(CLOSE);
}

void top(){
    //Top
  beginShape();
  curveVertex(x,y-2.7*ratio);
  curveVertex(x,y-2.7*ratio);
  curveVertex(x+1.5*ratio,y-1.8*ratio);
  curveVertex(x+3*ratio,y-2*ratio);
  curveVertex(x+3.8*ratio,y-2.2*ratio);
  curveVertex(x+4.3*ratio,y-2.2*ratio);
  curveVertex(x+4.8*ratio,y-2*ratio);
  curveVertex(x+5.5*ratio,y-2.1*ratio);
  curveVertex(x+6*ratio,y-2*ratio);
  curveVertex(x+7.5*ratio,y-2.3*ratio);
  curveVertex(x+8.2*ratio,y-2*ratio);
  curveVertex(x+9*ratio,y-1.6*ratio);
  curveVertex(x+9.2*ratio,y-1.7*ratio);
  curveVertex(x+9.3*ratio,y-2*ratio);
  curveVertex(x+9.35*ratio,y-2.5*ratio);
  curveVertex(x+9.3*ratio,y-3.5*ratio);
  curveVertex(x+9*ratio,y-3.9*ratio);
  curveVertex(x+8.5*ratio,y-3.7*ratio);
  curveVertex(x+7*ratio,y-3*ratio);
  curveVertex(x+4.5*ratio,y-3.8*ratio);
  curveVertex(x+3*ratio,y-4*ratio);
  curveVertex(x+1.5*ratio,y-3.8*ratio);
  curveVertex(x,y-3*ratio);
  curveVertex(x,y-3*ratio);
  endShape();
}

void tail(){
  
  //Tail
  beginShape();
  curveVertex(x+7.5*ratio,y-3.1*ratio);
  curveVertex(x+7.5*ratio,y-3.1*ratio);
  curveVertex(x+7.7*ratio,y-2.7*ratio);
  curveVertex(x+7.5*ratio,y-2.3*ratio);
  curveVertex(x+7.55*ratio,y-2.3*ratio);
  curveVertex(x+8.2*ratio,y-2*ratio);
  curveVertex(x+9*ratio,y-1.6*ratio);
  curveVertex(x+9.2*ratio,y-1.7*ratio);
  curveVertex(x+9.3*ratio,y-2*ratio);
  curveVertex(x+9.35*ratio,y-2.5*ratio);
  curveVertex(x+9.3*ratio,y-3.5*ratio);
  curveVertex(x+9*ratio,y-3.9*ratio);
  curveVertex(x+8.5*ratio,y-3.7*ratio);
  curveVertex(x+7.5*ratio,y-3.1*ratio);
  curveVertex(x+7.5*ratio,y-3.1*ratio);
  endShape();
  
}

void innertail(){
  beginShape();
  curveVertex(x+7.5*ratio,y-3.1*ratio);
  curveVertex(x+7.5*ratio,y-3.1*ratio);
  curveVertex(x+7.7*ratio,y-2.7*ratio);
  curveVertex(x+7.5*ratio,y-2.3*ratio);
  curveVertex(x+7.55*ratio,y-2.3*ratio);
  curveVertex(x+8.2*ratio,y-2*ratio);
  curveVertex(x+8.5*ratio,y-1.85*ratio);
  curveVertex(x+7.8*ratio,y-2.4*ratio);
  curveVertex(x+8.4*ratio,y-2.3*ratio);
  curveVertex(x+7.85*ratio,y-2.6*ratio);
  curveVertex(x+8.3*ratio,y-2.7*ratio);
  curveVertex(x+7.8*ratio,y-2.85*ratio);
  curveVertex(x+8.4*ratio,y-3.1*ratio);
  curveVertex(x+7.85*ratio,y-3.1*ratio);
  curveVertex(x+8.4*ratio,y-3.65*ratio);
  curveVertex(x+7.5*ratio,y-3.1*ratio);
  curveVertex(x+7.5*ratio,y-3.1*ratio);
  endShape();
  
}

void middleflipper(){
  //middle flipper
  
  beginShape();
  curveVertex(x+2.6*ratio,y-2*ratio);
  curveVertex(x+2.6*ratio,y-2*ratio);
  curveVertex(x+2.8*ratio,y-1.5*ratio);
  curveVertex(x+3*ratio,y-1.2*ratio);
  curveVertex(x+3.5*ratio,y-1.4*ratio);
  curveVertex(x+4*ratio,y-1.7*ratio);
  curveVertex(x+3.5*ratio,y-2*ratio);
  curveVertex(x+3.1*ratio,y-2.2*ratio);
  curveVertex(x+3.1*ratio,y-2.2*ratio);
  endShape();

}

void innermiddle(){
}

void eye(){

  //eye
  fill(255);
  ellipse(x+1.5*ratio,y-3.6*ratio,.7*ratio,.7*ratio);
  fill(0);
  ellipse(x+1.5*ratio,y-3.6*ratio,.45*ratio,.45*ratio);
  fill(255);
  noStroke();
  ellipse(x+1.37*ratio,y-3.65*ratio,.25*ratio,.3*ratio);
  stroke(0);
}

void mouth(){
    
  fill(250,230,160);
  //mouth
  beginShape();
  curveVertex(x+.6*ratio,y-2.8*ratio);
  curveVertex(x+.6*ratio,y-2.8*ratio);
  curveVertex(x-.1*ratio,y-3*ratio);
  curveVertex(x-ratio,y-1.7*ratio);
  endShape();
  
  beginShape();
  curveVertex(x+.6*ratio,y-2.8*ratio);
  curveVertex(x+.6*ratio,y-2.8*ratio);
  curveVertex(x-.1*ratio,y-3*ratio);
  curveVertex(x-ratio,y-4.2*ratio);
  endShape();
  
  beginShape();
  curveVertex(x+.6*ratio,y-2.8*ratio);
  curveVertex(x+.6*ratio,y-2.8*ratio);
  curveVertex(x-.1*ratio,y-2.7*ratio);
  curveVertex(x-ratio,y-4*ratio);
  endShape();
  
  beginShape();
  curveVertex(x+.6*ratio,y-2.8*ratio);
  curveVertex(x+.6*ratio,y-2.8*ratio);
  curveVertex(x-.1*ratio,y-2.7*ratio);
  curveVertex(x-ratio,y-1.5*ratio);
  endShape();
  }

}


