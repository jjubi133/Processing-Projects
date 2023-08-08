//Variables for making the creature fly above the screen
float creatureY = 320;
float creatureYaddition = 0.6;

//Variables for changing the location of the creature
float creatureX = 400;
float creatureXaddition = 1.5;

//Variables for changing the eye size
float eyeW;
float eyeH;

//Variable for changing the yoga ball size
float ballH = 50;

//Variables for wing color
float eyeR;
float eyeG;
float eyeB;

void setup() {
  size(800, 800); // Display window is 800x800 pixels
  stroke(0); //stroke color is black
}

void draw() {
  background(255); // Display window is white
  
  // Draw creature's hat
  fill(0, 255, 255);
  triangle(creatureX, creatureY-240, creatureX-200, creatureY-160, creatureX+200, creatureY-160);
  
  // Draw creature's head
  noFill();
  arc(creatureX, creatureY-160, 320, 320, radians(0), radians(180));
  
  // Draw creature's eyes
  fill(0);
  eyeW = random(10, 70);
  eyeH = random(10, 70);
  ellipse(creatureX-80, creatureY-104, eyeW, eyeH);
  ellipse(creatureX+40, creatureY-104, eyeH, eyeW);
  
  // Draw creature's mouth
  fill(255, 0, 0);
  ellipse(creatureX-24, creatureY-40, 80, 16);
  
  // Draw ceature's wings
  float eyeR = random(255);
  float eyeG = random(255);
  float eyeB = random(255);
  fill(eyeR, eyeG, eyeB);
  quad(creatureX-30, creatureY, creatureX-320, creatureY, creatureX-320, creatureY+160, creatureX-30, creatureY+40);
  quad(creatureX+8, creatureY, creatureX+280, creatureY, creatureX+280, creatureY+160, creatureX+8, creatureY+40);
  
  // Draw creature's body
  fill(255, 0, 0);
  bezier(creatureX, creatureY, creatureX-160, creatureY+80, creatureX+160, creatureY+160, creatureX, creatureY+240);
  
  // Draw creature's legs
  line(creatureX, creatureY+240, creatureX+240, creatureY+320);
  line(creatureX, creatureY+240, creatureX-240, creatureY+320);
  
  // Draw creature's yoga ball
  fill(0, 0, 230);
  ballH = ballH + 0.5;
  ellipse(creatureX, creatureY+330, 160, ballH);
  if (ballH >170) {
    ballH = ballH - 100;
  }
  
  //Making the creature's location change
  creatureX = creatureX - creatureXaddition;
  creatureY = creatureY + creatureYaddition;
  if (creatureX <= 320) {
    creatureX = 520;
  }
  if (creatureY >= 400) {
    creatureY = 240;
  }
  
  //Having the creature fly to the top of the sketch window and disappear
  if (mousePressed) {
    creatureYaddition = creatureYaddition - 2.9;
  }
}

void keyPressed() {
  creatureYaddition = 0;
  creatureY = 320;
}
