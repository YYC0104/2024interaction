PImage img = loadImage("ball.png");
size(640, 569);
background(img);
fill(0);

for (float y =21; y<569; y+=13.749) {
  for (float x =21; x<640; x+= 30) {
    ellipse(x, y, 12, 12);
  }
}
for (float y =21; y<569; y+=13.749) {
  for (float x =21+15; x<640; x+= 30) {
    ellipse(x, y, 12, 12);
  }
}
