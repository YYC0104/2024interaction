void setup() {
  size(500, 400);
}

void keyPressed() {
  //按下去時會有速度，放開後速度要變成0
  if (keyCode == RIGHT) vx = 1;
  if (keyCode == LEFT) vx = -1;
  if (keyCode == UP) vy = -1;
  if (keyCode == DOWN) vy = 1;
}

void keyReleased() {
  if (keyCode == RIGHT || keyCode == LEFT) vx = 0;
  if (keyCode == UP || keyCode == DOWN) vy = 0;
}
float x = 250, y = 200, vx = 0, vy = 0;
void draw() {
  x += vx;
  y += vy;
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
  angle = a;
  pushMatrix();
  myTank(x, y, a);
  popMatrix();
  if (bulletVX != 0 && bulletVY != 0) {
    bulletX += bulletVX;
    bulletY += bulletVY;
    ellipse(bulletX, bulletY, 20, 20);
  }
}

float angle, bulletX = 0, bulletY = 0, bulletVX = 0, bulletVY = 0; //子彈x, y的位置和速度
void mousePressed() {
  bulletX = x;
  bulletY = y;
  bulletVX = cos(angle);
  bulletVY = sin(angle);
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
