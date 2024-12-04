class Youwin {// identify youwin as a class
  PImage youwin;//PImage veriable for the youwin
  Youwin() {//title class setup
    youwin = loadImage("youwin.png");//load the image known as youwin
  }
  void display() {//void to display the youwin
    image(youwin, width/2, height/2);
  }
}
