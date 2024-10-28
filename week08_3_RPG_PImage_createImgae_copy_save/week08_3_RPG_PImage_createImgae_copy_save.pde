PImage img;
void setup() {
  size(640, 480);
  //15格 = 480，480/15 = 32，方格長32
  img = loadImage("640x480.png");
}

void draw() {
  background(img);
  for (int i = 0; i < 15; i++) { //高度480 對應y座標(左手i)
    for (int j =0; j < 20; j++) { //寬度640 對應x座標(右手j)
      noFill(); //不用填色
      stroke(0); //黑色的線
      rect(j*32, i*32, 32, 32); //小格子大小是 32*32
    }
  }
  stroke(255, 0, 0); //紅色的線
  rect(J*32, I*32, 32,32);
}
int I = -1, J = -1;
void mouseMoved() { //void Moved()移動時，要修改I, J
  I = mouseY/32; //小心x
  J = mouseX/32; //小心y
}

int N = 1;
void mousePressed(){
  //PImage now = createImage(32, 32, RGB);
  //now.copy(img, 0, 0, 640, 480);
  PImage now = createImage(32, 32, RGB);
  now.copy(img, J*32, I*32, 32, 32, 0, 0, 32, 32);
  now.save(N + ".png");
  N++;
}
