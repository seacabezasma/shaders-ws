// Código de Mandlebrot set, elaborado por Daniel Shiffman
// Versión modificada por Sergio Cabezas para usar shaders.
// Original disponible en:
// https://github.com/CodingTrain/Rainbow-Code/blob/master/CodingChallenges/CC_21_Mandelbrot/CC_21_Mandelbrot.pde

PShader colorShade;
float scale = 5;
void setup() {
  size(1280, 720, P2D);
  //colorMode(RGB, 1);
  noStroke();
  
  colorShade = loadShader("colorfrag.glsl");
  colorShade.set("u_resolution", float(width), float(height));
  colorShade.set("translate", 0.5, 0.5);
  
}
void draw() {
  colorShade.set("translate", norm(mouseX, 0, width), 1 - norm(mouseY, 0, height));
  colorShade.set("scale", scale);
  shader(colorShade);
  rect(0,0,width,height);
  //println(frameRate);
  if(keyPressed){
    if (key == 'A' || key == 'a')
      scale = (scale <= 0.0) ? 5.0 : scale - 0.01;
      
    if(key == 'D' || key == 'd')
      scale = scale + 0.01;
    }
}
