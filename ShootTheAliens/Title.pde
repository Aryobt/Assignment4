class Title {// identify title as a class
  PImage title;//PImage veriable for the title
  Title() {//title class setup
    title = loadImage("title.png");//load the image known as title
  }
  void display() {//void to display the title
    image(title, width/2, height/2);
  }
}
