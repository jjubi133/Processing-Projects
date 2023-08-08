// Variables for the shapes' position
int circleX = 400;
int circleY = 200;
int rectX = 400;
int rectY = 600;
int shape = 0;

void setup() {
  size(800, 800); //Display window is 800x800 pixels
  rectMode(CENTER);
}

void draw() {
  //Set fill, background, and stroke
  background(255);
  stroke(0);
  fill(175);
  
  //Draw shapes
  ellipse(circleX, circleY, 200, 200);
  rect(rectX, rectY, 200, 200);
 
  if (mousePressed) {
    //If mouse is pressed, set variable that makes the shapes move to 1
    shape = 1;
  }
  
  if(shape == 1) {
  //Make shapes move when mouse is pressed
  circleX = circleX + 5;
  rectX = rectX - 5;
  }
}
