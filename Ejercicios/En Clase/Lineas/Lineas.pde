void setup() {
  size(800, 600);
}

void draw() {
  int cantLineas=4;

  for (int i=0; i<=cantLineas; i++) {
    float sep = width/cantLineas;
    float dis= sep*i;
    line(dis, 0, width/2, height/2); // Lineas Superiores
    line(dis, height, width/2, height/2); // Lineas Inferiores

  }
}
