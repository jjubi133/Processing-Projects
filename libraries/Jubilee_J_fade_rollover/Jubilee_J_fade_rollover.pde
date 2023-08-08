//Variables for making rectangles fade
float rect1=255;
float rect2=255;
float rect3=255;
float rect4=255;

// Example 5-3: Rollovers
void setup() {
  size(480, 270);
}

void draw() {
  background(255);
  stroke(0);

  // Depending on the mouse location, the variables for the rectangle color will change
  if (mouseX < 240 && mouseY < 135) {
    rect1 = 255;
    rect2 = rect2 - 1;
    rect3 = rect3 - 1;
    rect4 = rect4 - 1;
  } else if (mouseX > 240 && mouseY < 135) {
    rect1 = rect1 - 1;
    rect2 = 255;
    rect3 = rect3 - 1;
    rect4 = rect4 - 1;
  } else if (mouseX < 240 && mouseY > 135) {
    rect1 = rect1 - 1;
    rect2 = rect2 - 1;
    rect3 = 255;
    rect4 = rect4 - 1;
  } else if (mouseX > 240 && mouseY > 135) {
    rect1 = rect1 - 1;
    rect2 = rect2 - 1;
    rect3 = rect3 - 1;
    rect4 = 255;
  }
  //Make rectangles and lines
  fill(rect1);
  rect(0, 0, 240, 135);
  fill(rect2);
  rect(240, 0, 240, 135);
  fill(rect3);
  rect(0, 135, 240, 135);
  fill(rect4);
  rect(240, 135, 240, 135);
  line(240, 0, 240, 270);
  line(0, 135, 480, 135);
  
  //Make the min and max for variables
  constrain(rect1, 0, 255);
  constrain(rect2, 0, 255);
  constrain(rect3, 0, 255);
  constrain(rect4, 0, 255);
}
