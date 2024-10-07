PImage img;
void setup(){
  size(500, 500);
  img = loadImage("LCC_VIS_TRGB_2750-2024-10-02-07-40.jpg");
}
float s = 1.0, x = 0, y = 0;
float realX = 0, realY = 0;
void draw(){
  background(255);
  translate(x, y);
  scale(s);
  image(img, 0, 0);
}

//借用上週 week04_6 的程式碼
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
}

void mouseWheel(MouseEvent e){
  realX = (mouseX - x)/s; //真實座標(mouseX) - 中心)/s
  realY = (mouseY - y)/s; //真實座標(mouseY) - 中心)/s
  float oldS = s;
  if(e.getCount() > 0) s *= 1.1;
  else s *= 0.9;
  x = x + realX*oldS - realX*s;
  y = y + realY*oldS - realY*s;
}
