void setup(){
  size(400, 600);
  c = new PVector(200, 100); //NEW出新的物件
  p = new PVector(200, 130); //NEW出新的物件
}
PVector c, p;
void draw(){
  background(255);
  ellipse(c.x, c.y, 10, 10); //使用物件的 c.x
  ellipse(p.x, p.y, 10, 10);
}
