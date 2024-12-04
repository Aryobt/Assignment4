boolean goLeft = false;//boolean for movement
boolean goRight = false;//boolean for movement
boolean isMenuOn = true;
boolean die = false;
boolean victory = false;
boolean isPlaying = false;
Stars [] stars = new Stars[5];//Arrya list for the Stars object
Aliens aliens;// Array list of ailens

Lasergun l;//Laserun is shown with l
Laser g;
Crosshair c;//Crosshair is shown with c
Title t;//Title is shown with t
Youlose y;//you lose is shown with y
Youwin w;//you win is shown with w
Planet p;//Planet is shown with p
////////////////////////////////////////////////////////////////////////////////////////
void setup() {
  size(400, 400);//size of the screen
  imageMode(CENTER);

  aliens = new Aliens();

  restart();
}
void restart() {

  for (int i = 0; i<5; i++) {//loop the array list of stars
    stars[i] = new Stars();// assigning value to stars in the array
  }

  l = new Lasergun();//Lasergun is shown with l
  g = new Laser();
  c = new Crosshair();//Crosshair is shown with c
  t = new Title();//Title is shown with t
  y = new Youlose();
  w = new Youwin();
  p = new Planet();//Planet is showm with p

  // initialize the ships
  aliens.ship1alive = true;
  aliens.ship2alive = true;
  aliens.ship3alive = true;
  aliens.ship4alive = true;
  aliens.ship5alive = true;
}
/////////////////////////////////////////////////////////////////////////////////
void draw() {
  background(0);//black background
  noCursor();//removing cursor

  for (int i = 0; i<5; i++) {//loop the array list of stars
    stars [i]. display();//display the stars array list
  }
  ////////////////////////////////////////////////////////////////////////////////////////
  p. display();//display planet
 
  aliens.move();
  aliens.display();
  //}
  ////////////////////////////////////////////////////////////////////////////
  if (mousePressed == true) {//if mousePressed is true display the laser
    g. display();
  }
  //////////////////////////////////////////////////////////////////////////////////////
  l. display();//display laser gun
  c.display();//display crosshair
  /////////////////////////////////////////////////////////////////////////////
  if(aliens.ship1alive == false && aliens.ship2alive == false && aliens.ship3alive == false && aliens.ship4alive == false && aliens.ship5alive == false){
    w.display();
  }
  if (goRight == true) {//if goright is true move the gun to the right
    g. displayRight();
  }
  ///////////////////////////////////////////////////////////////
  if (goLeft == true) {//if goleft is true move the gun to left
    g. displayLeft();
  }
  ///////////////////////////////////////////////////////////////////////
  if (goLeft == true) {//if goleft is true move left for gun
    l.displayLeft();
  }
  /////////////////////////////////////////////////////////////////////////////////////////
  if (goRight == true) {//if goright is true move right for gun
    l.displayRight();
  }
  /////////////////////////////////////////////////////////////////////////////////
  if (goLeft == true) {//if goleft is true move left for crosshair
    c.displayLeft();
  }
  /////////////////////////////////////////////////////////////////////////////////////
  if (goRight == true) {//if goright is true move right for crosshair
    c.displayRight();
  }
  /////////////////////////////////////////////////////////////////////////////////////////
  if (isMenuOn == true) {// if menu is true show it
    t.display();//display title
  }
  ////////////////////////////////////////////////////////////////////////////////////////
  if (die == true && isMenuOn == false ) {//if die is true ismenuon is false so display you lose
    y. display();
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////
void keyPressed() {// void for ressing keys
  if (key == 'a') {//if the a key is pressed go left for the gun and crosshair
    goLeft = true;
  }
  /////////////////////////////////////////////////////////////////////////////////////////////////
  if (key == 'd') {//if the d key is pressed go right for the gun and crosshair
    goRight = true;
  }
}
//////////////////////////////////////////////////////////////////////////////////////
void keyReleased() {
  if (key=='a') {//if key a released is false dont go left
    goLeft = false;
  }
  ////////////////////////////////////////////////////////////////////////////
  if (key =='d') {//if key d released is false dont go left
    goRight = false;
  }
  /////////////////////////////////////////////////////////////////////
  if (key == 'e' ) {//if e is pressed remove the title screen
    isMenuOn = false;//
    die = false;


    restart();
  }
}
////////////////////////////////////////////////////////////////////////////////////
void mousePressed() {
  if ((c.position.x >= 50)&&(mouseY >= 30)&&(c.position.x<=150)&&(mouseY<= 90)) {//if mouse y = to planet hit box you lose is true
    die = true;
  }
  if (dist(c.position.x, mouseY, aliens.ship1Position.x, aliens.ship1Position.y) <= 50) {
    aliens.ship1alive = false;
  }
  if (dist(c.position.x, mouseY, aliens.ship2Position.x, aliens.ship2Position.y) <= 50) {
    aliens.ship2alive = false;
  }
  if (dist(c.position.x, mouseY, aliens.ship3Position.x, aliens.ship3Position.y) <= 50) {
    aliens.ship3alive = false;
  }
  if (dist(c.position.x, mouseY, aliens.ship4Position.x, aliens.ship4Position.y) <= 50) {
    aliens.ship4alive = false;
  }
  if (dist(c.position.x, mouseY, aliens.ship5Position.x, aliens.ship5Position.y) <= 50) {
    aliens.ship5alive = false;
  }
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
