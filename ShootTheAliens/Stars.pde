class Stars {//identify Stars as a class
  float Xstarposition1;//veriable for the x position of star 1
  float Ystarposition1;//veriable for the y position of star 1
  float Xstarposition2;//veriable for the x position of star 2
  float Ystarposition2;//veriable for the y position of star 2
  float Xstarposition3;//veriable for the x position of star 3
  float Ystarposition3;//veriable for the y position of star 3
  float Xstarposition4;//veriable for the x position of star 4
  float Ystarposition4;//veriable for the y position of star 4
  float Xstarposition5;//veriable for the x position of star 5
  float Ystarposition5;//veriable for the y position of star 5
  /////////////////////////////////////////////////////////////////////////////////////
  Stars() {
    Xstarposition1 = random(20, 380);//xposition of star1
    Ystarposition1 = random(20, 380);//yposition of star1
    Xstarposition2 = random(20, 380);//xposition of star2
    Ystarposition2 = random(20, 380);//yposition of star2
    Xstarposition3 = random(20, 380);//xposition of star3
    Ystarposition3 = random(20, 380);//yposition of star3
    Xstarposition4 = random(20, 380);//xposition of star4
    Ystarposition4 = random(20, 380);//yposition of star4
    Xstarposition5 = random(20, 380);//xposition of star5
    Ystarposition5 = random(20, 380);//yposition of star5
  }
  /////////////////////////////////////////////////////////////////////////////////
  void display() {//display the Stars
    Star1();//draw Star1
    Star2();//draw Star2
    Star3();//draw Star3
    Star4();//draw Star4
    Star5();//draw Star5
  }
  ////////////////////////////////////////////////////////////////////////////
  void Star1() {
    fill(255);//color Star1 white
    noStroke();//dont add any stroke to my Star1
    ellipse( Xstarposition1, Ystarposition1, 5, 5);//Star1 position
  }
  ///////////////////////////////////////////////////////////////////////////////
  void Star2() {
    fill(255);//color Star2 white
    noStroke();//dont add any stroke to my Star2
    ellipse( Xstarposition2, Ystarposition2, 5, 5);//star2 position
  }
  //////////////////////////////////////////////////////////////////////////////////
  void Star3() {
    fill(255);//color Star1 white
    noStroke();//dont add any stroke to my Star1
    ellipse(Xstarposition3, Ystarposition3, 5, 5);//Star3 position
  }
  /////////////////////////////////////////////////////////////////////////////////////////////
  void Star4() {
    fill(255);//color Star1 white
    noStroke();//dont add any stroke to my Star1
    ellipse(Xstarposition4, Ystarposition4, 5, 5);//Star4 position
  }
  /////////////////////////////////////////////////////////////////////////////////////////////
  void Star5() {
    fill(255);//color Star1 white
    noStroke();//dont add any stroke to my Star1
    ellipse( Xstarposition5, Ystarposition5, 5, 5);//Star5 position
  }
}
