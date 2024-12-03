class Aliens {//identify class as aliens
PImage ship1;
PImage ship2;
PImage ship3;
PImage ship4;
PImage ship5;
  Aliens() {//aliens setup
  ship1 = loadImage("ship1.png");
  ship2 = loadImage("ship2.png");
  ship3 = loadImage("ship3.png");
  ship4 = loadImage("ship4.png");
  ship5 = loadImage("ship5.png");
  }
  void display() {
    image(ship1,1,1);
    image(ship2,1,1);
    image(ship3,1,1);
    image(ship4,1,1);
    image(ship5,1,1);
  }
}
