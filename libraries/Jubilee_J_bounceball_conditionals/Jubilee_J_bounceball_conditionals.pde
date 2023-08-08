//Variables for ball movement and color
float x = random(16, 184);
int speed = 1;
float y = random(16, 184);
int speedY = 1;
float randomR;
float randomG;
float randomB;

void setup() {
  size(200,200); //Display window is 200x200 pixels
}

void draw() {
  background(255); // Background color is white

  //To increase the speed of the ball, click the mouse. Click the mouse again to slow it down
   if(mousePressed) {
     if(speed == 1 && speedY == 1) {
       speed = 4;
       speedY = 4;
     } else {
       speed = 1;
       speedY = 1;
     }
   }
     
  // Add the current speed to the x and y location.
  x = x + speed;
  y = y + speedY;

  if ((x > width-16) || (x < 16)) {
    // If the object reaches either edge, multiply speed by -1 to turn it around.
    speed = speed * -1;
    //Ball color changes
    randomR = random(255);
    randomG = random(255);
    randomB = random(255);
  }
  
  if ((y > height-16) || (y < 16)) {
    //If the object reaches either top or bottom, multiply speedY by -1 to turn it around.
    speedY = speedY * -1;
    //Ball color changes
    randomR = random(255);
    randomG = random(255);
    randomB = random(255);
  }
  
  // Display circle at x and y location
  stroke(0);
  fill(randomR, randomG, randomB);
  ellipse(x,y,32,32);
}
