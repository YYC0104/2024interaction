void setup(){
  size(400, 400);
}

int x = 200, y = 200;
void draw(){
  background(255);
  fill(#C64A4E);
  if(keyPressed && keyCode == RIGHT) x++;
  if(keyPressed && keyCode == LEFT) x--;
  if(keyPressed && keyCode == UP) y--;
  if(keyPressed && keyCode == DOWN) y++;
  ellipse(x, y, 100, 100);
}
