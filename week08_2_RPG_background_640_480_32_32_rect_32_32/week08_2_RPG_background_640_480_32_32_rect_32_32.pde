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
      rect(j*32, i*32, 32, 32); //小格子大小是 32*32
    }
  }
}
