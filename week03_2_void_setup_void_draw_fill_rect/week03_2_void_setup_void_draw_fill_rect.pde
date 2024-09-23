PImage img;
void setup(){
  size(474, 670);
  img = loadImage("Holo.jpg");
}
void draw(){
  image(img, 0, 0);
  noStroke();
  fill(255, 0, 0, 100);
  rect(mouseX, mouseY, 70, 50);
}
