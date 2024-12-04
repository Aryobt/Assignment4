class Laser {//identify Laser as a class

  PVector position;
  Laser() {
  
    position = new PVector(50, 380);
  }
  void display() {
   stroke(3,255,240);
   line(position.x,position.y,position.x-45,mouseY);
  }
  void displayLeft() {
 line(position.x, position.y,position.x-45,mouseY);
 position.x -=2;
  }
  void displayRight() {
 line(position.x,position.y,position.x-45,mouseY);
 position.x +=2;
  }
}
