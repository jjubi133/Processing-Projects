void setup() {
  size(400, 400); //display window is 400x400 pixels
  background(255); //background color is white
}

void draw() {
  //Lines
  stroke(0);
  line(width*0, height*0, width, height);
  line(width, height*0, width*0, height);
  
  //Ellipse
  fill(150);
  ellipse(width/2, height/2, width/2, height/2);
  
  //Rectangles
  rectMode(CENTER);
  rect(width*0.13, height/2, width/10, height/10);
  rect(width*0.87, height/2, width/10, height/10);
}


