class Planet {//identify Planet as class
  PImage planet1;//PImage veriable for the planet
  Planet() {//planet setup
    planet1 = loadImage("planet1.png");//load the image known as planet1//in my design I have 2 more planets but due to the lack of time I had to go with only 1
  }
  void display() {//draw planet
 Hitbox();//draw the hitbox void for the planet
    image(planet1, 100, 60);//show the planet image
  }
  void Hitbox(){//draw the hitbox
    noStroke();//having noStroke
    fill(0,0,0,0);//fill the hitbox with black and an alpha of zero to make it disapear
    rect(50,30,150,90);//draw rect
  }
}
