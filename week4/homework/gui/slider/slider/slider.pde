import controlP5.*;

ControlP5 cp5;
int myColor = color(0, 0, 0);
int sliderValue = 100;
int sliderValue2 = 100;
int sliderValue3 = 100;
int r, g, b;
float x ;
float y ;

float speedx = 1;
float speedy = 1;

float dia = 25;

void setup() {
  size(700, 400);
  noStroke();

  x = width/2;
  y = height/2;
  cp5 = new ControlP5(this);
    cp5.enableShortcuts();
  //slider();
  // to variable 'sliderValue'
  
    cp5.addSlider("sliderValue")
    .setPosition(x, y)
    .setSize(200, 20)
    .setRange(0, 255)
    .setValue(100);

  cp5.addSlider("sliderValue2")
    .setPosition(x, y+20)
    .setSize(200, 20)
    .setRange(0, 200)
    .setValue(120);

  cp5.addSlider("sliderValue3")
    .setPosition(x, y+40)
    .setSize(200, 20)
    .setRange(0, 100)
    .setValue(160);
}


void draw() {


  background(r, g, b);
  r = sliderValue;
  g = sliderValue2;
  b = sliderValue3;

  fill(255, 0, 120);  
  rect(x, y-10, 200, 10);
}
