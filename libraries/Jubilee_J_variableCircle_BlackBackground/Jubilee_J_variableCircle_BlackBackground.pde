// Integers to replace all hard-coded values
int circleX = 300;
int circleY = 300;
int circleW = 150;
int circleH = 150;
int circleStroke = 0;
int circleFill = 255;
int backgroundColor = 100;
int sizeW = 600;
int sizeH = 600;

void setup() {
  // Basic setup for size and background color
  size(sizeH, sizeW);
  background(backgroundColor);
  circleW = circleW + 50;
  circleH = circleH + 50;
}

void draw() {
  // Code to sketch the ellipse or circle
  stroke(circleStroke);
  fill(circleFill);
  ellipse(circleX, circleY,  circleW, circleH);
}
