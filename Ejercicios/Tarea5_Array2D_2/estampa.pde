void dibujo(float x, float y, float w, float h) {

  fill(#E8F5E9);
  stroke(200);
  rect(x, y, w, h);

  fill(#764708);
  stroke(#764708);
  rect(x + w * 0.47, y + h * 0.5, w * 0.05, h * 0.3);

  fill(#1E782F);
  stroke(#1E782F);
  float x1 = x + w * 0.3;
  float y1 = y + h * 0.6;
  float x2 = x + w * 0.7;
  float y2 = y + h * 0.6;
  float x3 = x + w * 0.5;
  float y3 = y + h * 0.1;

  triangle(x1, y1, x2, y2, x3, y3);
}
