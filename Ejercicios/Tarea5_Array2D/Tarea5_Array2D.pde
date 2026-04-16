int tam = 40;
int col, fil;
float[][] distancias;

void setup() {
  size(600, 600);
  col = width / tam;
  fil = height / tam;

  distancias = new float[col][fil];

  noStroke();
}

void draw() {
  for (int i = 0; i < col; i++) {
    for (int j = 0; j < fil; j++) {
      float cx = i * tam + tam/2;
      float cy = j * tam + tam/2;

      distancias[i][j] = dist(mouseX, mouseY, cx, cy);
      float colores = map(distancias[i][j], 0, width, 255, 0);
      fill(colores);
      rect(i * tam, j * tam, tam, tam);
    }
  }
}
