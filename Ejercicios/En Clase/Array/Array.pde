
int CantFil = 15;
int CantCol = 9;
boolean [][] fueclick;

void setup() {
  size(900, 600);
  background(#FFFFFF);
  fueclick = new boolean [CantCol][CantFil];
}

void draw() {
  float ancho = width/CantCol;
  float alto = height/CantFil;

  for (int i=0; i<CantCol; i++) {
    for (int j=0; j<CantFil; j++) {

      float x = i * ancho;
      float y = j * alto;
      float limiteDerecho = x + ancho;
      float limiteInferior = y + alto;

      if ((x<mouseX)&&(mouseX<limiteDerecho)&&(y<mouseY)&&(mouseY<limiteInferior)&&(mousePressed==true)) {
        fueclick[i][j] = true;
      };

      if (fueclick[i][j]) {
        fill(0);
      } else fill(255)
        ;
      rect(x, y, ancho, alto);
    }
  };
}
