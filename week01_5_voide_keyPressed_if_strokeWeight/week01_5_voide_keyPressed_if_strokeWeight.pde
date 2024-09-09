void setup() {
  size(500, 500);
}

void draw() {
  if (mousePressed)line(mouseX, mouseY, pmouseX, pmouseY);
} //滑鼠按下去，就畫線到 mouse 的 XY座標到 previous mouse XY

void keyPressed(){
  if(key == '1') strokeWeight(1);
  if(key == '2') strokeWeight(5);
  if(key == '3') strokeWeight(10);
}
