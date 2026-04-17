int cant = 30;
float[] altura;
float ancho;

void setup() {
  size(900, 600);
  
  altura = new float[cant];
  ancho = (float) width / cant;
  
  for (int i = 0; i < cant; i++) {
    altura[i] = 0;
  }
}

void draw() {
  background(0);

  if (mousePressed) {
    int indice = constrain(int(mouseX / ancho), 0, cant - 1);
    float altura2 = height - mouseY;
    altura[indice] = constrain(altura2, 0, height);
  }

  fill(0, 255, 150);
  noStroke();
  for (int i = 0; i < cant; i++) {
    float x = i * ancho;
    float y = height - altura[i];
    rect(x, y, ancho - 2, altura[i]);
  }
}
