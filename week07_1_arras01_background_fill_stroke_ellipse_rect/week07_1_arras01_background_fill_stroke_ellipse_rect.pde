void setup() {
  size(500, 400);
}

int x = 250, y = 200;
void draw() {
  background(215, 184, 200);

  fill(167, 167, 175);
  stroke(110, 110, 113);
  strokeWeight(3);
  rect(240, 160, 20, 20); //砲管位置及大小

  fill(204, 102, 156);
  stroke(125, 84, 105);
  strokeWeight(2);
  ellipse(x, y, 55, 55); //球體位置及大小

  line(x, y, mouseX, mouseY);
}
