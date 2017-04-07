/*
Assignment 1
Name: Adriana Castilla Hernandez
E-mail: acastillah@brynmawr.edu
Course: CS 110 - Section 1
Submitted: 9/16/2013
*/

size(700,650);
background(255);

smooth();
//rectangles on the left side
fill(200,20,90);
rect(60,100,300,50);


//lower arc of the strip
stroke(0);
fill(200,20,90);
arc(560,140,180,50,0,PI);

//color of outside part of strip with a rectangle
fill(200,20,90);
noStroke();
rect(470,100,180,40);

//inside ellipse with black color
fill(0);
ellipse(560, 100, 180,40);

//same ellipse but with color and less opacity to give effect of shade
fill(200,20,90,200);
stroke(0);
ellipse(560, 100, 180,40);

//small inside ellipse and curve
stroke(0);
noFill();
curve(400,135,526,117,594,117,720,135);
fill(230);
ellipse(560,117,68,5);

//lines outlining strip
line(470, 100, 470, 140);
line(650,100,650,140);

stroke(0);
noFill();

//MOBIUS STRIP

//Ellipses, right half
arc(350,400,400,325,4.68,2*PI);
arc(350,400,400,325,0,1.6);

arc(350,400,350,275,4.68,2*PI);
arc(350,400,350,275,0,1.6);

arc(350,400,300,225,4.68,2*PI);
arc(350,400,300,225,0,1.6);

arc(350,400,250,175,4.68,2*PI);
arc(350,400,250,175,0,1.6);

arc(350,400,200,125,4.68,2*PI);
arc(350,400,200,125,0,1.61);

arc(350,400,150,75,4.67,2*PI);
arc(350,400,150,75,0,1.62);

arc(350,400,100,25,4.65,2*PI);
arc(350,400,100,25,0,1.64);

//Ellipses, left half
arc(345,475,305,175,PI/2,PI);
arc(345,475,305,175,4.19,PI*3/2);

arc(345,450,305,175,PI/2,PI);
arc(345,450,305,175,3.93,PI*3/2);

arc(345,425,305,175,PI/2,PI);
arc(345,425,305,175,3.75,PI*3/2);

arc(345,325,305,175,PI/2,PI*3/2);

arc(345,350,305,175,PI/2,PI);
arc(345,350,305,175,3.29,PI*3/2);

arc(345,375,305,175,PI/2,PI);
arc(345,375,305,175,3.44,PI*3/2);

arc(345,400,305,175,PI/2,PI);
arc(345,400,305,175,3.59,PI*3/2);

//line on the left side joining top ellipse to bottom ellipse
line(192.5,325,192.5,475);



