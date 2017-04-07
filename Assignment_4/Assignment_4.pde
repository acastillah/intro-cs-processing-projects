float[] usa;
float[] venezuela;
float[] sweden;
float[] japan;
int  p=0;
  float minVolume, maxVolume;

  int[] year;

  float X1, X2, Y1, Y2;

  PFont legendFont = createFont("Gabriola", 20);

  void setup() {
 
    String[] lines = loadStrings("INFO.txt");
     usa = new float[lines.length];
     venezuela = new float[lines.length];
     sweden = new float[lines.length];
     japan = new float[lines.length];
     year = new int[lines.length];
     for (int i=0; i<lines.length; i++) {
       String[] pieces = split(lines[i], ",");//separating year and quantity
       usa[i] = float(pieces[1]);
       venezuela[i] = float(pieces[2]);
       sweden[i] = float(pieces[3]);
       japan[i] = float(pieces[4]);
       year[i] = int(pieces[0]);
     
     
     }
     println("Data Loaded:");

     minVolume = min(usa);
     maxVolume = max(venezuela);
     println(minVolume);
     println(maxVolume);
     // drawing setup
     size(800, 550);
   
     // plot rectangle
     X1 = 120;
     X2 = width-30;
     Y1 = 50;
     Y2 = height-150 - Y1;
     
     smooth();
     textFont(legendFont);
   
   } // setup

  void draw() {
  background(0);
    stroke(255);
    

   drawXLabels();
    drawYLabels();

  drawGraph(usa, color(250,20,0));
   drawGraph(venezuela, color(255,100,150));
    drawGraph(sweden, color(50,150,250));
    drawGraph(japan, color(128,255,0));
   

  if (p % 4 == 0){
  drawGraph(usa, color(250,20,0));
  }
  else if(p % 4==1){
    drawGraph(venezuela, color(250,100,150));
  }
  else if(p%4==2){
    drawGraph(sweden, color(50,150,250));
  }
  else {
    drawGraph(japan, color(128,255,0));
  }



    // draw legend
    
    int space= int(X2-X1)/4;
    int ellipse1=int(X1+(space/2));
    float ratio_usa = 140;
    fill(250,0,0,150);
    ellipse(ellipse1,height-100,ratio_usa,ratio_usa);
    textFont(legendFont,30);
    text("United States",ellipse1+60,height-9);
    float ratio_ven = (140*28)/309;
    fill(250,100,150,200);
     ellipse(ellipse1+(2.25*space),height-100,ratio_ven,ratio_ven);
     text("Venezuela",ellipse1+(2.4*space)+20,height-60);
     float ratio_sweden = (140*9)/309;
    fill(50,150,250,200);
     ellipse(ellipse1+(3*space),height-100,ratio_sweden,ratio_sweden);
     text("Sweden",ellipse1+(3.1*space)+20,height-70);
     float ratio_japan = (140*127)/309;
    fill(128,255,0,150);
     ellipse(ellipse1+(1.32*space),height-100,ratio_japan,ratio_japan);
     text("Japan",ellipse1+(1.38*space)+20,height-100+ratio_japan);
     
     
    
    // title & Source info
    fill(200);
    textSize(30);
    textAlign(CENTER);
    text("Unemployment %", width/2,  Y1 - 15);
    textSize(15);
    textAlign(RIGHT, BOTTOM);
    text("worldbank.org", width - 10, height - 10);
    
    textSize(25);
    text("Representation of total population",width/1.05,410);
    textSize(15);
    text("Mouse over to see",100,450);
    text("population density",100,465);
    
if (pow((mouseX - ellipse1),2) + pow((mouseY - 450),2) <= pow(ratio_usa/2,2)){
 textSize(45);    
  text("32.19",ellipse1+28,height-95);
}
if(pow((mouseX - ellipse1-(2.25*space)),2) + pow((mouseY - 450),2) <= pow(ratio_ven*1.3,2)){
 textSize(25);    
  text("31.67",ellipse1+28+(2.22*space),height-95);
}
if(pow((mouseX - ellipse1-(1.32*space)),2) + pow((mouseY - 450),2) <= pow(ratio_japan/2,2)){
 textSize(30);    
  text("337",ellipse1+28+(1.25*space),height-95);
}
if(pow((mouseX - ellipse1-(3*space)),2) + pow((mouseY - 450),2) <= pow(ratio_sweden*8,2)){
 textSize(20);    
  text("20.82",ellipse1+28+(2.95*space),height-95);
}
    // axis labels
 
  } // draw

  void drawGraph(float[] data, color linecolor) {
    noFill();
    strokeWeight(3);
    stroke(linecolor);
     beginShape();
    for (int i = 0; i < data.length; i++) {
      float x = map(i, 0, data.length - 1, X1, X2);
      float y = map(data[i], 0, maxVolume*1.05, Y2, Y1);
      vertex(x, y);
     
    }
    endShape();
    
    noStroke();
fill(linecolor, 70);
    beginShape();
    for (int i = 0; i < data.length; i++) {
      float x = map(i, 0, data.length - 1, X1, X2);
      float y = map(data[i], 0, maxVolume*1.05, Y2, Y1);
      vertex(x, y);
    }
   
    vertex(X2, Y2);
    vertex(X1, Y2);
    endShape(CLOSE);
  
   
  } // drawGraph

  void drawXLabels() {
    strokeWeight(1);
    fill(150);
    textSize(15);
    textAlign(CENTER);

    for (int i = 0; i < year.length; i += 5) {
      float x = map(i, 0, year.length, X1, X2);
      text(year[i], x, Y2 + 10);
      stroke(150);
      line(x, Y1, x, Y2);
    }
    textSize(20);
    textAlign(CENTER, TOP);
    text("Year", width / 1.8, Y2 + 15);
  } // drawXLabels

  void drawYLabels() {
    
    textSize(15);
    textAlign(RIGHT);

    for (float i = 0; i <= maxVolume; i += 4) {
      float y = map(i, 0, maxVolume, Y2, Y1);
      text(floor(i), X1 - 10, y);
      line(X1, y, X2, y);
    }
    textSize(20);
    text("Percentage", X1 - 30, (height-150) / 2);
  }
  
void mouseClicked(){
  p=p+1;
}
