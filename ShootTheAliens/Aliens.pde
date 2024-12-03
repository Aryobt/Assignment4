class Aliens {//identify class as aliens

  //PImage ships [];
  PImage ship1;//PImage veriable for ship1
  //PImage ship2;//PImage veriable for ship2
  //PImage ship3;//PImage veriable for ship3
  //PImage ship4;//PImage veriable for ship4
  //PImage ship5;//PImage veriable for ship5

  PVector   ship1Position;//position for ship1//got example from week 9 train
  //PVector   ship2Position;//position for ship2//got example from week 9 train
  //PVector   ship3Position;//position for ship3//got example from week 9 train
  //PVector   ship4Position;//position for ship4//got example from week 9 train
  //PVector   ship5Position;//position for ship5//got example from week 9 train

  PVector   ship1velocity;//velocity for ship1//got example from week 9 train
  //PVector   ship2velocity;//velocity for ship1//got example from week 9 train
  //PVector   ship3velocity;//velocity for ship1//got example from week 9 train
  //PVector   ship4velocity;//velocity for ship1//got example from week 9 train
  //PVector   ship5velocity;//velocity for ship1//got example from week 9 train


  Aliens(float y, float s) {//aliens setup
    ship1Position = new PVector(width/2, y);//assigning the position for ship1
    //ship2Position = new PVector(width/2, y+200);//assigning the position for ship2
    //ship3Position = new PVector(width/2, y+160);//assigning the position for ship3
    //ship4Position = new PVector(width/2, y+100);//assigning the position for ship4
    //ship5Position = new PVector(width/2, y+50);//assigning the position for ship5

    ship1velocity = new PVector(s, 0);//assign velocity for ship1
    //ship2velocity = new PVector(s+20, 0);//assign velocity for ship2
    //ship3velocity = new PVector(s+30, 0);//assign velocity for ship3
    //ship4velocity = new PVector(s+40, 0);//assign velocity for ship4
    //ship5velocity = new PVector(s+50, 0);//assign velocity for ship5
    
   // ships = new PImage [5];//ships is now a new array of 5 images

    ship1 = loadImage("ship1.png");//load image ship1
    //ships[1] = loadImage("ship2.png");//load image ship2
    //ships[2] = loadImage("ship3.png");//load image ship3
    //ships[3] = loadImage("ship4.png");//load image ship4
    //ships[4] = loadImage("ship5.png");//load image ship5
  }
  void move() {
    ship1Position.add(ship1velocity);
    //ship2Position.add(ship2velocity);
    //ship3Position.add(ship3velocity);
    //ship4Position.add(ship4velocity);
    //ship5Position.add(ship5velocity);

    if ( (ship1Position.x + 50) >= width || ship1Position.x < 0) {//if ship1 reaches end comeback
      ship1velocity.x = ship1velocity.x * -1;
    }
    //    if ( (ship2Position.x + 50) >= width || ship2Position.x < 0) {//if ship2 reaches end comeback
    //  ship2velocity.x = ship2velocity.x * -1;
    //}
    //    if ( (ship3Position.x + 50) >= width || ship3Position.x < 0) {//if ship3 reaches end comeback
    //  ship3velocity.x = ship3velocity.x * -1;
    //}
    //    if ( (ship4Position.x + 50) >= width || ship4Position.x < 0) {//if ship4 reaches end comeback
    //  ship4velocity.x = ship4velocity.x * -1;
    //}
    //    if ( (ship5Position.x + 50) >= width || ship5Position.x < 0) {//if ship5 reaches end comeback
    //  ship5velocity.x = ship5velocity.x * -1;
    //}
  }
  void display() {//void to draw the ships

    image(ship1, ship1Position.x, ship1Position.y);//display ship1
    //image(ships[1], ship2Position.x, ship2Position.y);//display ship2
    //image(ships[2], ship3Position.x, ship3Position.y);//display ship3
    //image(ships[3], ship4Position.x, ship4Position.y);//display ship4
    //image(ships[4], ship5Position.x, ship5Position.y);//display ship5
  }
}
