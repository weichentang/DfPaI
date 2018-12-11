PImage sample;
int x, y;
 
void setup() {
  size(1000, 600); 
  noStroke(); 
  sample=loadImage("1.jpg");
  x=0;
  y=400;
}
 
void draw() { 
  background(255); 
  image(sample, x, y, 50, 30);
}
 
void mouseDragged() { 
  x=mouseX; 
  y=mouseY;
}
