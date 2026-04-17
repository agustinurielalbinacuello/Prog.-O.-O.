boolean[][][] laberinto;
int fil = 10;
int col = 10;

void setup() {
  size(1000, 800);
  laberinto = new boolean[fil][col][6];

  for (int i = 0; i < fil; i++) {
    for (int j = 0; j < col; j++) {
      for (int k = 0; k < 6; k++) {
        laberinto[i][j][k] = random(1) > 0.5;
      }
    }
  }
}

void draw() {
  background(255);
  stroke(#050505);

  float altoC = (float) height / fil;
  float anchoC = (float) width / col;

  for (int i = 0; i < fil; i++) {
    for (int j = 0; j < col; j++) {
      float x = j * anchoC;
      float y = i * altoC;

      if (laberinto[i][j][0]) line(x, y, x + anchoC, y);
      
      if (laberinto[i][j][1]) line(x + anchoC, y, x + anchoC, y + altoC);
      
      if (laberinto[i][j][2]) line(x, y + altoC, x + anchoC, y + altoC);
      
      if (laberinto[i][j][3]) line(x, y, x, y + altoC);
      
      if (laberinto[i][j][4]) line(x, y, x + anchoC, y + altoC);
      
      if (laberinto[i][j][5]) line(x + anchoC, y, x, y + altoC);
    }
  }
}
