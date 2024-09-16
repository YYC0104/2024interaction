void setup() {
  size(400, 400);
}
void draw() {
  background(255);
  fill(#861B42);
  float a = radians(frameCount);
  if(a > PI/4) a = PI/4 - a;
  arc(200, 200, 300, 300, 0 + a, PI * 2 - a, PIE);
}
