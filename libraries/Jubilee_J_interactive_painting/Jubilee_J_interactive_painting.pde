void setup (){
  size (800, 650); //display winow is 800x650 pixels
  background (255, 255, 234); //display window color is light tan
  frameRate(70); //70 frames per second
  noStroke(); //all shapes will not have a outline
  
}
  //Variables
 int X = 800;
 int Y = 650;
 int tri = 255;
 
void draw(){
  
  //quadrilateral that's color is based on mouse position
  fill(230, mouseX, mouseY);
  quad(120, 50, 20, 510, 600, 670, 900, 190); 
  
 //red quadrilateral
  fill(170, 0, 0); 
  quad (610, 15, 530, 65, 800, 140, 800, 85); 
  
  //gray quadrilateral
  fill(70);
  quad (300, -20, 170, 640, 790, 555, 660, 60);
   
  //bezier that's color is based on mouse position
  fill(230, mouseX, mouseY);
  bezier(170,640,230,575,555,490,790,556); 
  
  //light tan triangles
  fill(255, 255, 234);
  triangle(156, 641, 400, 630, 234, 600);
  triangle(800, 555, 657, 580, 684, 536);
  
 //light tan quadrilateral
  quad(232, 601, 400, 631, 385, 615, 274, 585);
 
 //black quadrilateral that's size is based on mouse position
  fill (0);
  quad (330, 20, 90, 515, mouseX-12, 540, 400, 35);
  
  //brown orange triangle
  fill(175, 55, 40); 
  triangle (45, 0, 770, 315, 370, 700); 
 
  //light tan quadrilateral
  fill (255, 255, 234);
  quad (mouseX, mouseY, mouseX+50, mouseY+120, mouseX+310, mouseY+185, mouseX+245, mouseY-105);
    
//add shapes when mouse is clicked
stroke(0, tri);
if (mousePressed) {
X = mouseX;
Y = mouseY;
  }
  fill(175, 55, 40, tri);
  triangle (X, Y, X+400, Y+175, X+170, Y+400);  
  noStroke();
}


void mousePressed(){
  tri=255; //New triangle opacity will be 255
  //when mouse is clicked, "Interactive Painting" will be displayed in the message window
  println("Interactive Painting");
}

void keyPressed(){
  //clear all new shapes when key is pressed
  background(255, 255, 234, 255);
  tri=0; //set triangle to be transparent

}

