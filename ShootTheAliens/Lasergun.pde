class Lasergun {
  PVector position;
  PImage gun;
  Lasergun() {
    position = new PVector (50, 380);
    gun = loadImage ("Gun.png");
  }
  void display() {
    image(gun, position.x, position.y);
  }
  void displayLeft() {
    image(gun, position.x, position.y);
    position.x -=1;
  }
  void displayRight() {
    image(gun, position.x, position.y);
    position.x +=1;
  }
}
