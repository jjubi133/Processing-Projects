//Variables for ranomly colored eyes
float eyeR;
float eyeG;
float eyeB;

//Variables for  having Zoog rise above the screen from below
float zoogX = 100;
float zoogY = 300;

void setup() {
  size(200, 200); // display window is 200x200 pixels
}

void draw() {
  background(255); //background color is white
  
  //Making the vvariables be random numbers through every loop
  eyeR = random(255);
  eyeG = random(255);
  eyeB = random(255);
  
  //Set rects and ellipses to CENTER mode
  rectMode(CENTER);
  ellipseMode(CENTER);
  
  //Draw Zoog's body
  stroke(0); 
  fill(175);
  rect(zoogX, zoogY, 20, 100);
  
  //Draw Zoog's head
  fill(255);
  ellipse(zoogX, zoogY-30, 60, 60);
  
  //Draw Zoog's eyes
  fill(eyeR, eyeG, eyeB);
  ellipse(zoogX-19, zoogY-30, 16, 32);
  ellipse(zoogX+19, zoogY-30, 16, 32);
  
  //Draw Zoog's legs
  line(zoogX-10, zoogY+50, zoogX-20, zoogY+60);
  line(zoogX+10, zoogY+50, zoogX+20, zoogY+60);
  
  //Making Zoog rise above the screen
  zoogY = zoogY - 1;
}
