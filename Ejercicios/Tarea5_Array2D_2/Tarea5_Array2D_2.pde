int col = 16;
int fil = 9;
boolean[][] estados;
float anchoC;
float altoC;

void setup() {
  size(800, 450);
  estados = new boolean[col][fil];
  anchoC = width / (float)col;
  altoC = height / (float)fil;

}

void draw() {
  background(255);
  for (int i = 0; i < col; i++) {
    for (int j = 0; j < fil; j++) { 
      float x = i * anchoC;
      float y = j * altoC;

      if (estados[i][j] == true) {
        dibujo(x, y, anchoC, altoC);
      } else {
        fill(255);
        stroke(200);
        rect(x, y, anchoC, altoC);
      }
    }
  }
}

void mousePressed() {
  int colS = floor(mouseX / anchoC);
  int filaS = floor(mouseY / altoC);

  if (colS >= 0 && colS < col && filaS >= 0 && filaS < fil) {

    estados[colS][filaS] = !estados[colS][filaS];
  }
}
