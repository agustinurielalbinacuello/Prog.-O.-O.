int columnas=10;
int filas=8;
void setup() {
  size(800, 600);
}

void draw() {
  float sepX= width/columnas;
  float sepY= height/filas;
  for (int i=0; i<columnas; i++) {
    for (int j=0; j<filas; j++) {
      float x = i * sepX;
      float y = j * sepY;
      square(x,y,200);
    }
  }
}
