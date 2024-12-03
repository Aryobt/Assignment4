boolean goLeft = false;//boolean for movement
boolean goRight = false;//boolean for movement
boolean isMenuOn = true;
Stars [] stars = new Stars[5];//Arrya list for the Stars object

Lasergun l;//Laserun is shown with l
Crosshair c;//Crosshair is shown with c
Title t;//Title is shown with t

void setup() {
  size(400, 400);//size of the screen
  imageMode(CENTER);
  for (int i = 0; i<5; i++) {//loop the array list of stars
    stars[i] = new Stars();// assigning value to stars in the array
  }
  for (int i = 0; i<5; i--) {
  }
  l = new Lasergun();//Lasergun is shown with l
  c = new Crosshair();//Crosshair is shown with c
  t = new Title();//Title is shown with t
}

void draw() {
  background(0);//black background
  for (int i = 0; i<5; i++) {//loop the array list of stars
    stars [i]. display();//display the stars array list
  }
 
  l. display();//display laser gun
  c.display();//display crosshair


  if (goLeft == true) {
    l.displayLeft();
  }
  if (goRight == true) {
    l.displayRight();
  }
  if (goLeft == true) {
    c.displayLeft();
  }
  if (goRight == true) {
    c.displayRight();
  }
  
  if(isMenuOn == true){
     t.display();//display title
  }
}
void keyPressed() {
  if (key == 'a') {
    goLeft = true;
  }
  if (key == 'd') {
    goRight = true;
  }

}
void keyReleased() {
  if (key=='a') {
    goLeft = false;
  }
  if (key =='d') {
    goRight = false;
  }
    if(key == 'e'){
      isMenuOn = false;
  } 
}
