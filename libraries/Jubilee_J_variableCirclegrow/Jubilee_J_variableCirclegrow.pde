// Integers for the circle size
int circleW = 0;
int circleH = 0;

void setup() {
  size(200, 200);
}

void draw() {
  // Making the ellipse
  background(255);
  stroke(0);
  fill(175);
  ellipse(100, 100, circleW, circleH);
  
  // Make the circle grow
  circleW = circleW + 1;
  circleH = circleH + 1;
}

