class Lasergun {
  PVector position;//Pvector for the position of the gun
  PImage gun;//PImage veriable for the gun
  Lasergun() {//gun setup
    position = new PVector (50, 380);// the starting position of the gun
    gun = loadImage ("Gun.png");//load the image known as gun
  }
  void display() {//draw gun//this is my velosity
    image(gun, position.x, position.y);//in my sketch i made it so that the gub moves with mouse X but i wanted to make the a and d key more useful to make it at least feel like an fps
  }
  void displayLeft() {//draw gun movement to left//this is my velosity
    image(gun, position.x, position.y);//giving the image its positions
    position.x -=2;//position decreases
  }
  void displayRight() {//draw gun movement to right//this is my velosity
    image(gun, position.x, position.y);//giving the image its positions
    position.x +=2;//position increasing
  }
}
