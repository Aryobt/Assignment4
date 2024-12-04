class Laser {//identify Laser as a class

  PVector position;//pvector for the location of the laser
  Laser() {
  
    position = new PVector(50, 380);//give the laser the position
  }
  void display() {//draw the laser
   stroke(3,255,240);//a light blue ish green as the color of the stroke
   line(position.x,position.y,position.x-45,mouseY);//draw a line from the gun to where the crosshair is at
  }
  void displayLeft() {//draw laser movement to left//this is my velosity
 line(position.x, position.y,position.x-45,mouseY);//giving the image its positions
 position.x -=2;//position decreases
  }
  void displayRight() {//draw laser movement to right//this is my velosity
 line(position.x,position.y,position.x-45,mouseY);//giving the image its positions
 position.x +=2;//position increasing
  }
}
