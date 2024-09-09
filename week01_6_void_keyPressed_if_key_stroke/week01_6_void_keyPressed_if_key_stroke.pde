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
  if(key == '4') stroke(255, 0, 0);
  if(key == '5') stroke(255, 255, 0);
  if(key == '6') stroke(0, 255, 0);
  if(key == '7') stroke(0, 0, 255);
  if(key == '8') stroke(255, 0, 255);
}// key按下去，看 key 的值，決定線的粗細
