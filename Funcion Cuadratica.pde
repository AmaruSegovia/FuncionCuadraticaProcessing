// Coeficientes de la función cuadrática ax^2 + bx + c
float a = 1;
float b = 0;
float c = 0;

void setup() {
  size(400, 400);
  background(255);
  dibujarEjes();
}

void draw() {
  dibujarFuncion();
}

void dibujarEjes() {
  float halfHeight = height / 2;
  float halfWidth = width / 2;
  
  stroke(0);
  line(0, halfHeight, width, halfHeight); // Eje x
  line(halfWidth, 0, halfWidth, height); // Eje y
}

void dibujarFuncion() {
  float xmin = -5;
  float xmax = 5;
  float dx = 0.1;
  
  beginShape();
  noFill();
  
  for (float x = xmin; x <= xmax; x += dx) {
    float px = map(x, xmin, xmax, 0, width);
    float py = map(calcularFuncion(x), -10, 10, height, 0);
    vertex(px, py);
  }
  
  endShape();
}

float calcularFuncion(float x) {
  return a*pow(x, 2) + b*x + c;
}
