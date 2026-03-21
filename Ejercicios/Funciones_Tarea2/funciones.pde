boolean hayColision(float px, float py, float cx, float cy, float r) {
r = r/2;
  float d = dist(px, py, cx, cy);
  // Funcion dist te devuelve en float la distancia
  if (d>r) {
    return(false);
  } else {
    return(true);
  }
}
