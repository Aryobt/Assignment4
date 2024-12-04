class Aliens {//identify class as aliens

  //PImage ships [];
  PImage ship1;//PImage veriable for ship1

  PVector   ship1Position;//position for ship1//got example from week 9 train
  PVector acceleration;
  PVector   ship1velocity;//velocity for ship1//got example from week 9 train
  float topspeed;


  Aliens(float y, float s) {//aliens setup
    ship1Position = new PVector(width/2, y);//assigning the position for ship1
    //acceleration = new PVector(5,60);

    ship1velocity = new PVector(s, 0);//assign velocity for ship1

    ship1 = loadImage("ship1.png");//load image ship1
    //topspeed = 60;
  }
  void move() {
    ship1Position.add(ship1velocity);
   // ship1velocity.add(acceleration);
    //ship1velocity.limit(topspeed);

    if ( (ship1Position.x + 50) >= width || ship1Position.x < 0) {//if ship1 reaches end comeback
      ship1velocity.x = ship1velocity.x * -1;
    }
  }
  void display() {//void to draw the ships

    image(ship1, ship1Position.x, ship1Position.y);//display ship1
    //Ehitbox
  }
}
