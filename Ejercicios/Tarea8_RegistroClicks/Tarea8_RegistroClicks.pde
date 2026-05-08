int maxPuntos = 10;
float[] xs = new float[maxPuntos];
float[] ys = new float[maxPuntos];

int indice = 0;
int total = 0;

void setup() {
  size(600, 400);
}

void draw() {
  background(220);

  for (int i = 0; i < total; i++) {
    fill(#862525);
    ellipse(xs[i], ys[i], 30, 30);
  }
}

void mousePressed() {
  xs[indice] = mouseX;
  ys[indice] = mouseY;

  indice = indice + 1;

  if (indice == maxPuntos) {
    indice = 0;
  }

  if (total < maxPuntos) {
    total = total + 1;
  }
}
