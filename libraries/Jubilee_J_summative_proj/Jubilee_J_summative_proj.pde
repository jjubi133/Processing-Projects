/* Multiplayer Pong by Joseph Jubilee - 6/17/16
To control the left paddle, use the key "w" to go up and "s" to go down.
To control the right paddle, use the arrow keys up and down.
If the ball goes pasts your paddle, the other player gets a point.
The game is endless.
*/


//Variables for score
int score1 = 0;
int score2 = 0;

//Variables for the paddles
float paddleX = 80;
float paddleY = height/2;
float paddleW = 20;
float paddleH = 200;
float paddleX2 = 900;
float paddleY2 = height/2;
int paddleSpeed = 5;
boolean upL;
boolean downL;
boolean upR;
boolean downR;

//Variables for the ball
float x = width/2;
float y = height/2;
int w = 50;
int h = 50;
int speedX = 9;
int speedY = 7;
int runBall = 0;

void setup() {
  size(1000, 800); //display window is 800x600 pixels
  fill(255);
  
  //Set rect and ellipse mode to center
  rectMode(CENTER);
  ellipseMode(CENTER);
}

void draw() {
  background(0); //background is black
  
  //Draw ball
  fill(x, y, w);
  ellipse(x, y, w, h);
  fill(255);
  
  //Draw paddles
  rect(100, paddleY, paddleW, paddleH);
  rect(width-100, paddleY2, paddleW, paddleH);
  
  //Determine whether arrows keys are being pressed
  if (keyCode == UP) {
    upR = true;
  } else {
    upR = false;
  }
  if (keyCode == DOWN) {
    downR = true;
  } else {
    downR = false;
  }
  
  //Move paddleY2 up and down with arrow keys
  if (upR == true) {
    paddleY2 = paddleY2 - paddleSpeed;
  } else {
    upR = false;
  }
  if (downR == true) {
    paddleY2 = paddleY2 + paddleSpeed;
  } else {
    downR = false;
  }
  
  //Determine whether "w" or "s" are being pressed
  if (keyPressed) {
    if (key == 'w') {
      upL = true;
    } else {
      upL = false;
    }
    if (key == 's') {
      downL = true;
    } else {
      downL = false;
    }
  }
    
  //Move paddleY up and down with w and s
  if (upL == true) {
    paddleY = paddleY - paddleSpeed;
  } else {
    upL = false;
  }
  if (downL == true) {
    paddleY = paddleY + paddleSpeed;
  } else {
    downL = false;
  }
  
  //Constrain paddles so they won't move off the screen
  if (paddleY - paddleH/2 < 100) {
    paddleY = paddleY + paddleSpeed;
  } else if (paddleY + paddleH/2 > 750) {
    paddleY = paddleY - paddleSpeed;
  }
  if (paddleY2 - paddleH/2 < 100) {
    paddleY2 = paddleY2 + paddleSpeed;
  } else if (paddleY2 + paddleH/2 > 750) {
    paddleY2 = paddleY2 - paddleSpeed;
  }
    
  //Draw top and bottom borders
  stroke(0, 255, 0);
  strokeWeight(5);
  line(50, 100, width-50, 100);
  line(50, height-50, width-50, height-50);
  
  //Draw line to divide the screen
  strokeWeight(3);
  line(width/2, 100, width/2, height);
  stroke(255);
   
  //Make ball bounce off the left paddle
  if (x - w/2 < paddleX + paddleW/2 && y - h/2 < paddleY + paddleH/2) {
    speedX = speedX * -1;
    
  //Make ball bounce off the right paddle
  } else if (x + w/2 > paddleX2 - paddleW/2 && y + h/2 < paddleY2 + paddleH/2) {
    speedX = speedX * -1;
  }
  
  //Make the ball move
  if (mousePressed) {
    runBall = 1;
  }
  
  if (runBall == 1) {
    x = x + speedX;
    y = y + speedY;
  } else {
    x = 500;
    y = 400;
    speedY = -speedY;
    speedX = -speedX;
  }
  
  //Make ball bouce off the sides of the screen
  if ((y < 125) || (y > height-75)) {
    speedY = speedY * -1;
  }
  
  //Add scores
  if (x - w/2 <= 0) {
    runBall = 0;
    score2 = score2 + 1;
  } 
  
  if (x + w/2 >= width) {
    runBall = 0;
    score1 = score1 + 1;
  }
  
  //Show the name of the game
  textSize(50);
  text("MULTIPLAYER PONG", 270, 60);
 
  //Show the scores
  textSize(70);
  text(score1, 150, 70);
  text(score2, 830, 70);
}

void keyReleased() {
  //Make the paddles stop moving down or up when the key is released
  downL = false;
  downR = false;
  upR = false;
  upL = false;
}
