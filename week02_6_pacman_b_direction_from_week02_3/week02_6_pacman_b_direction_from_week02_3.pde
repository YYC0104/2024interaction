void setup() {
  size(400, 400);
}

int x = 200, y = 200;
void draw() {
  background(255);
  fill(#C64A4E);
  float a = frameCount % 180; //超過180度吃豆人會消失
  float b = radians(mouseX);
  if (a < 45) a = radians(a);
  else if (a < 90) a = radians(90 - a);
  else if (a < 135) a = radians(a - 90);
  else if (a < 180) a = radians(180 - a);
  arc(x + 50, y + 50, 100, 100, b + 0 + a, b + PI * 2 - a, PIE);
}
