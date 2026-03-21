float centroX = width/2;
float centroY = height/2;

void cesped() {
  stroke(#2E983F);
  fill(#2E983F);
  rect(0, height*0.8, width, height*0.2);
}

void tronco() {
  fill(#764708);
  stroke(#764708);
  rect(width*0.47,height*0.5,width*0.05,height*0.3);
}

void hojas() {
  fill(#1E782F);
  stroke(#1E782F);
  float x1 =width*0.3;
  float y1 =height*0.6;
  float x2 =width*0.7;
  float y2 =height*0.6;
  float x3 =width*0.5;
  float y3 =height*0.1;

  triangle(x1,y1,x2,y2,x3,y3);
}
