int []boardX = {0, -30, +30, +60, 0, -60, -90, -30, +30, +90, +60, 0, -60, -30, +30, 0};
int []boardY = {-80, -40, -40, 0, 0, 0, +40, +40, +40, +40, +80, +80, +80, +120, +120, +160};

PImage img;
void setup() {
  size(474, 670);
  img = loadImage("Holo.jpg");
}
void draw() {
  image(img, 0, 0);
  noCursor(); //不要有鼠標
  noStroke(); //不要有框線
  fill(255, 0, 0, 100);

  for (int i = 0; i < 16; i++) {
    rect(mouseX + boardX[i], mouseY + boardY[i], 70, 50);
  }
}
