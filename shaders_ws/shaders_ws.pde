// Código de Mandlebrot set, elaborado por Daniel Shiffman
// Versión modificada por Sergio Cabezas para usar shaders.
// Original disponible en:
// https://github.com/CodingTrain/Rainbow-Code/blob/master/CodingChallenges/CC_21_Mandelbrot/CC_21_Mandelbrot.pde

PShader colorShade;

void setup() {
  size(640, 480, P2D);
  //colorMode(RGB, 1);
  noStroke();
  
  colorShade = loadShader("colorfrag.glsl");
}
void draw() {
  colorShade.set("u_resolution", float(width), float(height));
  shader(colorShade);
  rect(0,0,width,height);
  println(frameRate);
}