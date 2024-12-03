boolean goLeft = false;//boolean for movement
boolean goRight = false;//boolean for movement
boolean isMenuOn = true;
Stars [] stars = new Stars[5];//Arrya list for the Stars object
Aliens [] aliens = new Aliens[5];// Arrya list of ailens

Lasergun l;//Laserun is shown with l
Crosshair c;//Crosshair is shown with c
Title t;//Title is shown with t
////////////////////////////////////////////////////////////////////////////////////////
void setup() {
  size(400, 400);//size of the screen
  imageMode(CENTER);
  for (int i = 0; i<5; i++) {//loop the array list of stars
    stars[i] = new Stars();// assigning value to stars in the array
  }
  ////////////////////////////////////////////////////////////////////////////////////
  for (int i = 5; i< aliens.length; i++) {
    aliens[0] = new Aliens(random(100, 300), random(0.5, 2));
  }
  //for (int i = 0; i<5; i--) {
  //}
  l = new Lasergun();//Lasergun is shown with l
  c = new Crosshair();//Crosshair is shown with c
  t = new Title();//Title is shown with t
}

void draw() {
  background(0);//black background
  noCursor();//removing cursor
  for (int i = 0; i<5; i++) {//loop the array list of stars
    stars [i]. display();//display the stars array list
  }
  for (int i = 0; i < aliens.length; i++) {
    aliens[0].move();
    aliens[0].display();
  }
  l. display();//display laser gun
  c.display();//display crosshair


  if (goLeft == true) {//if goleft is true move left for gun
    l.displayLeft();
  }
  if (goRight == true) {//if goright is true move right for gun
    l.displayRight();
  }
  if (goLeft == true) {//if goleft is true move left for crosshair
    c.displayLeft();
  }
  if (goRight == true) {//if goright is true move right for crosshair
    c.displayRight();
  }

  if (isMenuOn == true) {// if menu is true show it
    t.display();//display title
  }
}
void keyPressed() {// void for ressing keys
  if (key == 'a') {//if the a key is pressed go left for the gun and crosshair
    goLeft = true;
  }
  if (key == 'd') {//if the d key is pressed go right for the gun and crosshair
    goRight = true;
  }
}
void keyReleased() {
  if (key=='a') {//if key a released is false dont go left
    goLeft = false;
  }
  if (key =='d') {//if key d released is false dont go left
    goRight = false;
  }
  if (key == 'e') {//if e is pressed remove the title screen
    isMenuOn = false;
  }
}
