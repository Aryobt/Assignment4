class Aliens {//identify class as aliens

  PImage ships [];
  PImage ship1;//PImage veriable for ship1
  PImage ship2;
  PImage ship3;
  PImage ship4;
  PImage ship5;

  PVector   ship1Position;//position for ship1//got example from week 9 train
  PVector   ship2Position;
  PVector   ship3Position;
  PVector   ship4Position;
  PVector   ship5Position;

  PVector   ship1velocity;//velocity for ship1//got example from week 9 train
  PVector   ship2velocity;
  PVector   ship3velocity;
  PVector   ship4velocity;
  PVector   ship5velocity;

  PVector   ship1velocity2;

  float     topspeed;
  PVector   acceleration;

  boolean ship1alive, ship2alive, ship3alive, ship4alive, ship5alive;


  Aliens() {//aliens setup

    ship1alive = true;
    ship2alive = true;
    ship3alive = true;
    ship4alive = true;
    ship5alive = true;

    ship1Position = new PVector(width/2, height/2);//assigning the position for ship1
    ship2Position = new PVector(width/2-90, height/2+80);//assigning the position for ship2
    ship3Position = new PVector(width/2-120, height/2-120);//assigning the position for ship3
    ship4Position = new PVector(width/2-60, height/2-50);//assigning the position for ship4
    ship5Position = new PVector(width/2+50, height/2+50);//assigning the position for ship5

    acceleration = new PVector(0, 10);

    ship1velocity = new PVector(10, 0);//assign velocity for ship1
    ship2velocity = new PVector(10, 0);//assign velocity for ship2
    ship3velocity = new PVector(10, 0);//assign velocity for ship3
    ship4velocity = new PVector(10, 0);//assign velocity for ship4
    ship5velocity = new PVector(10, 0);//assign velocity for ship5

    ship1velocity2 = new PVector(10, 0);

    ship1 = loadImage("ship1.png");//load image ship1
    ship2 = loadImage("ship2.png");//load image ship2
    ship3 = loadImage("ship3.png");//load image ship3
    ship4 = loadImage("ship4.png");//load image ship4
    ship5 = loadImage("ship5.png");//load image ship5

    topspeed = 10;
  }
  void logic() {
    ship1velocity2.add(acceleration);
    ship1velocity2.limit(topspeed);
  }
  void move() {
    ship1Position.add(ship1velocity);
    ship2Position.add(ship2velocity);
    ship3Position.add(ship2velocity);
    ship4Position.add(ship2velocity);
    ship5Position.add(ship2velocity);


    if ( (ship1Position.x + 50) >= width || ship1Position.x < 0) {//if ship1 reaches end, comeback
      ship1velocity.x = ship1velocity.x * -1;
    }
    if ( (ship2Position.x + 50) >= width || ship2Position.x < 0) {//if ship1 reaches end, comeback
      ship2velocity.x = ship2velocity.x * -1;
    }
    if ( (ship3Position.x + 50) >= width || ship3Position.x < 0) {//if ship1 reaches end, comeback
      ship3velocity.x = ship3velocity.x * -1;
    }
    if ( (ship4Position.x + 50) >= width || ship4Position.x < 0) {//if ship1 reaches end, comeback
      ship4velocity.x = ship4velocity.x * -1;
    }
    if ( (ship5Position.x + 50) >= width || ship5Position.x < 0) {//if ship1 reaches end, comeback
      ship5velocity.x = ship5velocity.x * -1;
    }
  }
  void display() {//void to draw the ships

    if (ship1alive == true) {
      image(ship1, ship1Position.x, ship1Position.y);//display ship1
    }
    if (ship2alive == true) {
      image(ship2, ship2Position.x, ship2Position.y);//display ship2
    }
    if (ship3alive == true) {
      image(ship3, ship3Position.x, ship3Position.y);//display ship3
    }
    if (ship4alive == true) {
      image(ship4, ship4Position.x, ship4Position.y);//display ship4
    }
    if (ship5alive == true) {
      image(ship5, ship5Position.x, ship5Position.y);//display ship5
    }
  }
}
