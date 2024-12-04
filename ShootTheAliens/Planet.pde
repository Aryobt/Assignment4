class Planet {//identify Planet as class
  PImage planet1;//PImage veriable for the planet
  Planet() {//planet setup
    planet1 = loadImage("planet1.png");//load the image known as planet1
  }
  void display() {//draw planet
 Hitbox();
    image(planet1, 100, 60);
  }
  void Hitbox(){
    noStroke();
    fill(0,0,0,0);
    rect(50,30,150,90);
  }
}
