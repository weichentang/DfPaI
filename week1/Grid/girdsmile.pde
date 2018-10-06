
void setup() {
  size(600, 600);
  background(0);
}

void draw() {
  

  for (int x = 1; x<6; x++) {
    for (int y = 1; y<6; y++) {
      noStroke();
      fill(255,235,15);
      ellipse( x * 100, y * 100, 60, 60);
      
      fill(0);
      ellipse( x* 100 - 10, y * 100- 10, 10, 10);
      ellipse( x* 100 + 10, y * 100 - 10, 10, 10);
      fill(0);
      arc(x*100, y*100+10,20, 20, radians(0), radians(180));
      
      
      
      
    }
  }
}
