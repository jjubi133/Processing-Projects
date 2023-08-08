// Variables for the setup
int sizeW = 600;
int sizeH = 600;
int background = 255;

//Variables for the lines
int stroke = 0;
int strokeWeight = 1;
int centerPointX = 300;
int centerPointY = 300;
int upperY = 0;
int lowerLeftY = 600;
int lowerLeftX = 0;
int lowerRightY = 600;
int lowerRightX = 600;

void setup() {
  //Background, stroke, and size
  size(sizeW, sizeH);
  background(background);
}

void draw() {
  //Operation to change the value of the variables
  strokeWeight = strokeWeight + 1;
  stroke = stroke + 1;
  stroke(stroke);
  strokeWeight(strokeWeight);
  
  //Code for the lines
  line(centerPointX, centerPointY, centerPointX, upperY);
  line(centerPointX, centerPointY, lowerLeftX, lowerLeftY);
  line(centerPointX, centerPointY, lowerRightX, lowerRightY);
}
