void setup (){
  size (800, 650); //display winow is 800x650 pixels
  background (255, 255, 234); //display window color is light tan
  noStroke(); //all shapes will not have a outline
}
void draw(){
  
  //pink quadrilateral
  fill(230, 170, 180);
  quad(120, 50, 20, 510, 600, 670, 900, 190); 
  
 //red quadrilateral
  fill(170, 0, 0); 
  quad (610, 15, 530, 65, 800, 140, 800, 85); 
  
  //gray quadrilateral
  fill(70);
  quad (300, -20, 170, 640, 790, 555, 660, 60);
  
  //pink bezier
  fill(230,170,180);
  bezier(170,640,230,575,555,490,790,556); 
  
  //light tan triangles
  fill(255,255,234);
  triangle(156, 641, 400, 630, 234, 600);
  triangle(800, 555, 657, 580, 684, 536);
  
 //light tan quadrilateral
  quad(232, 601, 400, 631, 385, 615, 274, 585);
 
 //black quadrilateral
  fill (0);
  quad (330, 20, 90, 515, 150, 540, 400, 35); //black quadrilateral
  
  //brown orange triangle
  fill(175, 55, 40); 
  triangle (45, 0, 770, 315, 370, 700); 
  
  //light tan quadrilateral
  fill (255, 255, 214);
  quad (430, 295, 480, 410, 740, 480, 675, 190);
}
