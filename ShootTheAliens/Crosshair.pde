class Crosshair {//identify crosshair as a class
  PVector position;//pvector for the crosshairs location
  PImage crosshair;//pimage for the image of the crosshair

  Crosshair() {//crosshair settings
    position = new PVector (10, mouseY);//position of the crosshair
    crosshair = loadImage("crosshair.png");//load the crosshair image
  }
  void display() {//this is my velosity
    image(crosshair, position.x, mouseY);//in my sketch i made it so that the gub moves with mouse X and mouse Y but since I added a and d for the gun if the crosshair moved with mouseX and mouseY it would make the gun movement useless
  }
  void displayLeft() {//this is my velosity
    image(crosshair, position.x, mouseY);//giving the image its positions
    position.x -=2;//position decreases
  }
  void displayRight() {//this is my velosity
    image(crosshair, position.x, mouseY);//giving the image its positions
    position.x +=2;//position decreases
  }
}
