void setup() {
  size(500, 400);
}

void keyPressed() {
  if (keyCode == RIGHT) x += 1;
  if (keyCode == LEFT) x -= 1;
  if (keyCode == UP) y -= 1;
  if (keyCode == DOWN) y += 1;
}

float x = 250, y = 200;
void draw() {
  //background(215, 184, 200); 粉色底
  //stroke(211, 180, 196);//粉色線條
  background(219); //灰色底
  translate(-x, -y); //全世界都往反方向移動
  translate(width/2, height/2);
  float mx = mouseX + x - width/2, my = mouseY +y - height/2;
  ellipse(mx, my, 8, 8);
  stroke(210); //灰色線條
  strokeWeight(1);
  for (int i = 0; i < 30; i++) {
    line(0, i*30, 500, i*30);
    line(i*30, 0, i*30, 500);
  }

  float dx = mx - x, dy = my - y;
  float a = atan2(dy, dx); //a是角度
  line(x, y, mx, my);
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
