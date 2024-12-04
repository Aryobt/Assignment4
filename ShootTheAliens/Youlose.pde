class Youlose {// identify youlose as a class
  PImage youlose;//PImage veriable for the youlose
  Youlose() {//title class setup
    youlose = loadImage("youlose.png");//load the image known as youlose
  }
  void display() {//void to display the youlose
    image(youlose, width/2, height/2);
  }
}
