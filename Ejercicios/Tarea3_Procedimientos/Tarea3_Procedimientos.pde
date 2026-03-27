void setup() {
  size(800, 600);
  background(#15A0E8);
}

void draw() {

  stroke(#2E983F);
  fill(#2E983F);
  rect(0, height * 0.8, width, height * 0.2);

  if (mousePressed) {
    arbol(mouseX, mouseY, 150, 200);
  }
}
