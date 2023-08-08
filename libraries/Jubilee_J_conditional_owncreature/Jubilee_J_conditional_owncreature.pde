//Variables for creature movement
int x = 400;
int y = 300;
int speedX = 3;
int speedY = 2;

//Variable to increase speed
int increase = 0;

//Variable to make colors fade
float fade1 = 255;
float fade2 = 255;

void setup(){
  size (800, 800); // display window is 200x200 pixels
}
void draw(){
  background(255); // display window is white
  
  //Keep creature constantly moving
  x = x + speedX;
  y = y + speedY;
  
  //Draw line to divide the screen
  line(width/2, 0, width/2, height);
  
  if (mouseX > width/2) {
    //If mouseX is on the right side of the window, set fade1 to fade to 255 and fade2 to fade to 0
    fade1 = fade1 + 5;
    fade2 = fade2 - 5;
  } else if (x < width/2) {
    //If mouseX is on the right side of the window, set fade2 to fade to 255 and fade1 to fade to 0
    fade1 = fade1 - 5;
    fade2 = fade2 + 5;
  }
  
  //Min and Max for color variables
  constrain(fade1, 0, 255);
  constrain(fade2, 0, 255);
  
  //Draw Hat
  fill(0, 255, 255);
  triangle (x, y-60, x-50, y-40, x+50, y-40);
  
  //Draw Head Outline
  noFill ();
  arc (x, y-40, 80, 80, radians(0), radians(180));
  
  //Draws Eyes
  fill(0);
  ellipse (x-20, y-26, 10, 10); 
  ellipse (x+10, y-26, 10, 10);
  
  //Draw Mouth
  fill(255, 0, 0);
  ellipse(x-6, y-10, 20, 4);
  
  //Draw Body
  bezier (x, y, x-40, y+20, x+40, y+40, x, y+60);
  
  //Draw Wings
  fill(0, fade1, 0);
  quad (x-10, y, x-80, y, x-80, y+40, x-10, y+10);
  quad (x+2, y, x+70, y, x+70, y+40, x+2, y+10);
  
  //Draw Legs
  line (x, y+60, x+60, y+80);
  line (x, y+60, x-60, y+80);
  
  //Draw Yoga Ball
  fill (0, 0, fade2);
  ellipse (x, y+90, 40, 40);
  
  //Make the creature go faster when mouse is pressed
  if (mousePressed) {
    increase = 2;
  }
  
  //Make creater return to original speed when a key is pressed
  if (keyPressed) {
    increase = 0;
  }
  
  //Conditions that determine whether to increase speed or decrease speed
  if (increase == 2) {
    if (speedX < 0 && speedY < 0) {
      speedX = -7;
      speedY = -6;
    } else if (speedX > 0 && speedY > 0) {
      speedX = 7;
      speedY = 6;
    }
  } else if (increase == 0) {
      if (speedX < 0 && speedY < 0) {
      speedX = -3;
      speedY = -2;
    } else if (speedX > 0 && speedY > 0) {
      speedX = 3;
      speedY = 2;
    }
  }
  
   //Make creature bounce off the sides of the screen
  if((x < 80) || (x > width - 70)) {
    speedX = speedX * -1;
  }
  
  if((y < 60) || (y > height-110)) {
    speedY = speedY * -1;
  }
}
