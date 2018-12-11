void setup() {
  size(600, 600);
  background(0);
}

void draw() {
  for (int y = 0; y<10; y++) {
    for (int x = 0; x<10; x++) {
      smile(x*60, y*60);

    }
  }
}

void smile(int _x, int _y) {
  int x =_x+30;
  int y=_y+30;

  //face
  noStroke();
  fill(255, 235, 15);
  ellipse(x, y, 60, 60);

  //eye
  fill(0);
  ellipse( x-10, y-10, 10, 10);
  ellipse( x+10, y-10, 10, 10);


  //mouse
  fill(0);
  arc(x, y+6, 20, 20, radians(0), radians(180));


}
