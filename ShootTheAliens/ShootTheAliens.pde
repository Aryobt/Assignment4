Stars [] stars = new Stars[5];//Arrya list for the Stars object
void setup() {
  size(400, 400);//size of the screen 
  for (int i = 0; i<5; i++) {//loop the array list of stars
    stars[i] = new Stars();// assigning value to stars in the array
  }
}

void draw() {
  background(0);//black background
  for (int i = 0; i<5; i++) {//loop the array list of stars
    stars [i]. display();//display the stars array list
  }
}
