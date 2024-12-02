boolean goLeft = false;//boolean for movement
boolean goRight = false;//boolean for movement
Stars [] stars = new Stars[5];//Arrya list for the Stars object

Lasergun l;//Laserun is shown with l

void setup() {
  size(400, 400);//size of the screen
  imageMode(CENTER);
  for (int i = 0; i<5; i++) {//loop the array list of stars
    stars[i] = new Stars();// assigning value to stars in the array
  }
  for (int i = 0; i<5; i--) {
  }
  l = new Lasergun();//Lasergun is shown with l
}

void draw() {
  background(0);//black background
  for (int i = 0; i<5; i++) {//loop the array list of stars
    stars [i]. display();//display the stars array list
  }

  l. display();//display laser gun

  if (goLeft == true) {
    l. displayLeft();
  }
  if (goRight == true) {
    l. displayRight();
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
}
