PImage img;
int pixelate = 20;

void setup() {
  size(500, 500);
  img = loadImage("hand.jpg");
  background(0);

}

void draw() {

  for (int x = 0; x < img.width; x += pixelate) {
    for (int y = 0; y < img.height; y += pixelate) {
      int loc = x + y*img.width;



      // Look up the RGB color in the source image
      loadPixels();
      float r = red(img.pixels[loc]);
      float g = green(img.pixels[loc]);
      float b = blue(img.pixels[loc]);
      updatePixels();

      // Draw an square at that location with that color
      noStroke();
      fill(r, g, b);
      rect(x, y, pixelate, pixelate);
    }
  }
}
