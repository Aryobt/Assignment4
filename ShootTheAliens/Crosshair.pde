class Crosshair {
  PVector position;
  PImage crosshair;

  Crosshair() {
    position = new PVector (10,mouseY);
    crosshair = loadImage("crosshair.png");
  }
  void display() {
    image(crosshair, position.x, mouseY);
  }
  void displayLeft() {
    image(crosshair, position.x, mouseY);//giving the image its positions
    position.x -=1;//position decreases
  }
  void displayRight() {
    image(crosshair, position.x, mouseY);//giving the image its positions
    position.x +=1;//position decreases
  }
}
