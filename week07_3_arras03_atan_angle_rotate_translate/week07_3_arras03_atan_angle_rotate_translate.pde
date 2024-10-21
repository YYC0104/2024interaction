void setup() {
  size(500, 400);
}

int x = 250, y = 200;
void draw() {
  background(215, 184, 200);

  line(x, y, mouseX, mouseY);
  float dx = mouseX - x, dy = mouseY - y;
  float a = atan2(dy, dx); //a是角度
  line(x, y, mouseX, mouseY);
  myTank(x, y, a);
}

void myTank(float x, float y, float a) {
  translate(x, y); //大二圖學課教的移動
  rotate(a); //大二圖學課教的旋轉
  
  fill(167, 167, 175);
  stroke(110, 110, 113);
  strokeWeight(3);
  rect(20, -10, 20, 20); //砲管位置及大小

  fill(204, 102, 156);
  stroke(125, 84, 105);
  strokeWeight(2);
  ellipse(0, 0, 55, 55); //球體位置及大小
}
