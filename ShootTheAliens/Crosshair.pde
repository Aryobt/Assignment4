class Crosshair {
  PVector position;
  PImage crosshair;

  Crosshair() {
    position = new PVector (10, mouseY);
    crosshair = loadImage("crosshair.png");
  }
  void display() {//this is my velosity
    image(crosshair, position.x, mouseY);//in my sketch i made it so that the gub moves with mouse X and mouse Y but since I added a and d for the gun if the crosshair moved with mouseX and mouseY it would make the gun movement useless  
  }
  void displayLeft() {//this is my velosity
    image(crosshair, position.x, mouseY);//giving the image its positions
    position.x -=1;//position decreases
  }
  void displayRight() {//this is my velosity
    image(crosshair, position.x, mouseY);//giving the image its positions
    position.x +=1;//position decreases
  }
}
