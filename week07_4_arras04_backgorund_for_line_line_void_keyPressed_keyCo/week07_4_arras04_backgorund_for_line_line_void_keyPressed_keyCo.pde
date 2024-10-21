void setup() {
  size(500, 400);
}

void keyPressed(){
  if(keyCode == RIGHT) x += 1;
  if(keyCode == LEFT) x -= 1;
  if(keyCode == UP) y -= 1;
  if(keyCode == DOWN) y += 1;
}

float x = 250, y = 200;
void draw() {
  //background(215, 184, 200); 粉色底
  //stroke(211, 180, 196);//粉底的線
  background(219);
  stroke(210);
  strokeWeight(1);
  for(int i = 0; i < 30; i++){
    line(0, i*30, 500, i*30);
    line(i*30, 0, i*30, 500);
  }

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
