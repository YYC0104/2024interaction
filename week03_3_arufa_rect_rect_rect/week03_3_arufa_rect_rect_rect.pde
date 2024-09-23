PImage img;
void setup(){
  size(474, 670);
  img = loadImage("Holo.jpg");
}
void draw(){
  image(img, 0, 0);
  noCursor(); //不要有鼠標
  noStroke(); //不要有框線
  fill(255, 0, 0, 100); 
  rect(mouseX, mouseY, 20, 20);
  rect(mouseX-10, mouseY-10, 20, 20);
  rect(mouseX-20, mouseY, 20, 20);
  rect(mouseX-10, mouseY+10, 20, 20);
}
