void setup() {
  size(800, 600);
  background(#F2F2F2);
}
float xc = random(width);
float yc = random(height);
float Radio = random(100,400);

void draw() {
  if (hayColision(mouseX,mouseY,xc,yc,Radio) == true) {
    fill(#CB080B);
  }
  circle(xc,yc,Radio);
  fill(#FFFFFF);
}
