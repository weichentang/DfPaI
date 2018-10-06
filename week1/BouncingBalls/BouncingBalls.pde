Ball[] balls = new Ball[20];

class Ball {
  PVector pos, vel;
  float radius;
 
 
  
    Ball (float x, float y, float radius){
    pos = new PVector(x, y);
    vel = new PVector(random(-3, 3), random(-3, 3));
    this.radius = radius;
   
  } 
  

  void update() {

    pos.add(vel);

    if (pos.x < radius || pos.x > width - radius) {
      vel.x *= -1;
    }
    if (pos.y < radius || pos.y > height - radius) {
      vel.y *= -1;
    }
  }

  void draw() {
    ellipse(pos.x, pos.y, radius*2 , radius*2);
  }
}




void setup() {
  size(500, 500);

  for (int i = 0; i < balls.length; i++) {
    float radius = random(10, 20);
    float x = random(radius, width - radius);
    float y = random(radius, height - radius);
    balls[i] = new Ball(x, y, radius);
    
  }
  

}

void draw() {
  background(0);

  for (Ball b : balls) {
 
    fill(random(0,224),random(67,212),random(34,176),random(43,189));
    b.draw();
    b.update();

    }
    
  }
