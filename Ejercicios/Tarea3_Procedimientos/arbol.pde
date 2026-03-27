void arbol(float posicionX, float posicionY, float ancho, float alto) {
  float anchoTronco = ancho * 0.2;
  float altoTronco = alto * 0.3;
  float hojas = posicionY - altoTronco;
  float pico = posicionY - alto;

  fill(#764708);
  noStroke();
  rect(posicionX - (anchoTronco/2), (posicionY - altoTronco), anchoTronco, altoTronco);

  fill(#1E782F);
  float x1 = posicionX - (ancho/2);
  float y1 = hojas;

  float x2 = posicionX + (ancho/2);
  float y2 = hojas;

  float x3 = posicionX;
  float y3 = pico;

  triangle(x1, y1, x2, y2, x3, y3);
}
