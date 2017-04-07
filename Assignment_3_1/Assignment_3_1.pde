/*
Assignment 3
Name: Adriana Castilla Hernandez
E-mail: acastillah@brynmawr.edu
Course: CS 110 - Section 1
Submitted: 10/11/2013
*/

int z=70;

void setup(){
 size(500,500);
 smooth();
background(30);
noLoop();

}

void draw(){
  int a=255; int b=0; int c=0;
  frameRate(1);
 fill(10);
 drawPolygon(width/2,height/2,width, 16);
  colors(width/2,width-50,width-145,16);
  noFill();
  strokeWeight(1.5);
  drawPolygon2(width/2,height/2,width-50,16);
  float diameter = 250.0;
  for(int i=1;i<5;i++){
   if(i==1){
    drawPolygon2(width/2,height/2,int(width/pow(2,i)),16);
    }
   else{
    fill(z); 
     drawPolygon2(width/2,height/2,int (diameter),16);
     z=z-20;
   }
   diameter=2*((diameter/2)-(diameter/4.5));
 }
noFill();
 // drawPolygon3(width/2,height/2,width-50, 16);
 textSize(15);
 fill(0);
 text("Adriana Castilla",370,480);
}

//Polygon which connects all sides normally.
//It also connects the vertices to the corresponding corner of the canvas.
void drawPolygon(float cx,float cy,int sz,int nSides){
  float radius = sz/2;
  float theta=0.0;
  float delta=360.0/nSides;
  float alpha=delta;
  float x1,y1,x2,y2, x3, y3,a,b,c;
   a=230;
  b=200;
  c=10;
  x1=cx+radius;
  y1=cy;
  
  beginShape();
  for (int i=0;i<nSides;i++){
      x2=radius*cos(radians(theta))+cx;
      y2=radius*sin(radians(theta))+cy;
      vertex(x2,y2);
      theta=theta+delta;
  }
  endShape(CLOSE);
  
  for (int i=0;i<nSides;i++){
      x2=radius*cos(radians(theta))+cx;
      y2=radius*sin(radians(theta))+cy;
      x1=radius*cos(radians(alpha))+cx;
      y1=radius*sin(radians(alpha))+cy;
      if (i<4){
        x3=width;
        y3=height;
      }
      else if(i<8){
        x3=0;
        y3=height;
      }
      else if(i<12){
        x3=0;
        y3=0;
      }
      else {
        x3=width;
        y3=0;
      }
     
     if (i<5){
      a=a-10;
      b=b-35;
      c=-5;
      }
      else if(i<10){
        a=a-30;
        c=c+40;
      }
      else{
        b=b+30;
        c=c-25;
      }
     fill(a,b,c);
      triangle(x3,y3,x2,y2,x1,y1);
      alpha=alpha+delta;
      theta=theta+delta;
      stroke(0);
}
}

//Polygon which connects the vertices in diagonal order (so not sides).
void drawPolygon2(float cx,float cy,int sz,int nSides){
  float radius = sz/2;
  float theta=0.0;
  float delta=360.0/nSides;
  float x1,y1,x2,y2;
  
  x1=cx+radius;
  y1=cy;
  
  beginShape();
  for (int i=0;i<nSides;i++){
      x2=radius*cos(radians(theta))+cx;
      y2=radius*sin(radians(theta))+cy;
      vertex(x2,y2);
      theta=theta+5*delta;
  }
endShape(CLOSE);

}

//Polygon which connects vertices to the center.
void drawPolygon3(float cx,float cy,int sz,int nSides){
  float radius = sz/2;
  float theta=0.0;
  float delta=360.0/nSides;
  float x1,y1,x2,y2;
  
  x1=cx;
  y1=cy;
  
  beginShape();
  for (int i=0;i<nSides;i++){
    vertex(x1,y1);  
    x2=radius*cos(radians(theta))+cx;
      y2=radius*sin(radians(theta))+cy;
      vertex(x2,y2);
      theta=theta+delta;
  }
endShape(CLOSE);
}

//Function which creates the overlapping colors in the large polygon.
void colors( int sz, int sz2, int sz3, int nSides){
  float cx=width/2;
  float cy=height/2;
   float radius = sz/2;
   float radius2 = sz2/2;
   float radius3 = sz3/2;
  float theta=0.0;
  float beta=22.5;
  float alpha=45.0;
  float omega=56.25;
  float delta=360.0/nSides;
  float x1,y1,x2,y2, x3, y3, x4, y4,x5,y5;
  float a, b, c;
  a=230;
  b=200;
  c=10;
  
  x1=width/2;
  y1=height/2;

  for (int i=0;i<nSides;i++){
      x2=(radius+3)*cos(radians(theta))+cx;
      y2=(radius+3)*sin(radians(theta))+cy;
      x3=radius2*cos(radians(alpha))+cx;
      y3=radius2*sin(radians(alpha))+cy;
      x4=radius3*cos(radians(omega))+cx;
      y4=radius3*sin(radians(omega))+cy;
      x5=radius*cos(radians(beta))+cx;
      y5=radius*sin(radians(beta))+cy;
      theta=theta+delta;
      alpha=alpha+delta;
      omega=omega+delta;
      beta=beta+delta;
      beginShape();
     fill(a,b,c);
      vertex(x1,y1);
      vertex(x2,y2);
      vertex(x3,y3);
      vertex(x4,y4);
      vertex(x5,y5);
      endShape();
      if (i<5){
      a=a-10;
      b=b-35;
      c=-5;
      }
      else if(i<10){
        a=a-30;
        c=c+40;
      }
      else{
        b=b+30;
        c=c-25;
      }
      
  }
}
