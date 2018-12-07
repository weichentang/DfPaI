
import processing.video.*;

// Variable for capture device
Capture video;

// Saved background
PImage backgroundImage;
PImage img;

float threshold = 20;

void setup() {
  size(320, 240);
  video = new Capture(this, width, height, 30);
  video.start();
  //setup imgbackground
  img = loadImage("1.jpg");
  backgroundImage = createImage(video.width, video.height, RGB);
}



void draw() {

  if (video.available()) {
    video.read();
  }
  loadPixels();
  video.loadPixels(); 
  backgroundImage.loadPixels();
  // add img
  img.loadPixels();
  image(video, 0, 0);


  for (int x = 0; x < video.width; x ++ ) {
    for (int y = 0; y < video.height; y ++ ) {
      int loc = x + y*video.width; 
      color fgColor = video.pixels[loc];
      color bgColor = backgroundImage.pixels[loc];
      
      // add img pixel
      color bgImg=img.pixels[loc];

      // Step 4, compare the foreground and background color
      float r1 = red(fgColor);
      float g1 = green(fgColor);
      float b1 = blue(fgColor);
      float r2 = red(bgColor);
      float g2 = green(bgColor);
      float b2 = blue(bgColor);
      float diff = dist(r1, g1, b1, r2, g2, b2);


      if (diff > threshold) {

        pixels[loc] = fgColor;
      } else {

        pixels[loc] = bgImg;
      }
    }
  }
  updatePixels();
}

void keyPressed() {
  if (key == ' ') {
    backgroundImage.copy(video, 0, 0, video.width, video.height, 0, 0, video.width, video.height);
    backgroundImage.updatePixels();
  }
}
