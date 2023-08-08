// Integers to replace all hard-coded values of the circles
int circleLeftSideX = 130;
int circleUpperLeftY = 130;
int circleLowerLeftY = 470;
int circleRightSideX = 470;
int circleUpperRightY = 130;
int circleLowerRightY = 470;
int circleW = 100;
int circleH = 100;
int circleStroke = 0;
int circleFill = 150;

// Integers to replace all hard-coded values of size and background
int backgroundColor = 255;
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
  // Code to sketch the ellipses
  stroke(circleStroke);
  fill(circleFill);
  ellipse(circleLeftSideX, circleUpperLeftY,  circleW, circleH);
  ellipse(circleLeftSideX, circleLowerLeftY,  circleW, circleH);
  ellipse(circleRightSideX, circleUpperRightY, circleW, circleH);
  ellipse(circleRightSideX, circleLowerRightY, circleW, circleH);
}
