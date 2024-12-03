class Lasergun {
  PVector position;//Pvector for the position of the gun
  PImage gun;//PImage veriable for the gun
  Lasergun() {//gun setup
    position = new PVector (50, 380);// the starting position of the gun
    gun = loadImage ("Gun.png");//load the image known as gun
  }
  void display() {//draw gun
    image(gun, position.x, position.y);
  }
  void displayLeft() {//draw gun movement to left
    image(gun, position.x, position.y);//giving the image its positions
    position.x -=1;//position decreases
  }
  void displayRight() {//draw gun movement to right
    image(gun, position.x, position.y);//giving the image its positions
    position.x +=1;//position increasing
  }
}
