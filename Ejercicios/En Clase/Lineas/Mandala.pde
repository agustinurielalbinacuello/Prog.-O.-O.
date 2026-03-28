
int xprev=0;
int yprev=0;

// Clase 13-03
void setup() {
  background(255, 255, 255);
  size(800, 600);
}

void draw() {
  lineasNegras();

  lineascolores();

  borrartodo();
  
  xprev=mouseX;
  yprev=mouseY;
}


void lineasNegras() {
  if (mousePressed && mouseButton == RIGHT ) {
    stroke(0, 0, 0); // Negra
    line(mouseX, mouseY, xprev, yprev);

    stroke(0, 0, 0); // Negra
    line((width-mouseX), mouseY, (width-xprev), yprev);

    stroke(0, 0, 0); // Negra
    line(mouseX, (height-mouseY), xprev, (height-yprev));

    stroke(0, 0, 0); // Negra
    line((width-mouseX), (height-mouseY), (width-xprev), (height-yprev));
  }
}

void lineascolores() {
  if (mousePressed && mouseButton == LEFT ) {
    stroke(0, 0, 0); // Negra
    line(mouseX, mouseY, xprev, yprev);

    stroke(255, 0, 0); // Roja
    line((width-mouseX), mouseY, (width-xprev), yprev);

    stroke(0, 255, 0); // Verde
    line(mouseX, (height-mouseY), xprev, (height-yprev));

    stroke(0, 0, 255); // Azul
    line((width-mouseX), (height-mouseY), (width-xprev), (height-yprev));
  }
}
void borrartodo () {
  if (mousePressed && mouseButton == CENTER ) {
    background(255, 255, 255);
    println(mouseX, mouseY); // Para ver cords
  }
}
