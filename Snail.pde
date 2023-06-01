class Caracol {
 
  float xpos;
  float ypos;
  float xspeed;
 
  Caracol(float xposTemp, float yposTemp, float xspeedTemp) {
    xpos = xposTemp;
    ypos = yposTemp;
    xspeed = xspeedTemp;
  }
 
 
  void mostrar() {
    stroke(0);
    line(xpos - 20, ypos+20, xpos - 35, ypos+35);
    line(xpos + 20, ypos+20, xpos + 35, ypos+35);
    fill(242, 255, 3);
    rect(xpos - 20, ypos-80, 40, 100);
    fill(192,68,0);
    ellipse(xpos, ypos-100, 80, 80);
    fill(68,68,0);
    ellipse(xpos-23, ypos-100, 20, 45);
    ellipse(xpos+23, ypos-100, 20, 45);
    fill(255,255,255);
  }
 
  void avanzar() {
    ypos = ypos + xspeed;
    if (ypos > height){
      ypos = 0;
    }
  }
 
}

Caracol Caracol1;
Caracol Caracol2;
Caracol Caracol3;

void setup() {
  size(600, 850);
 
  Caracol1 = new Caracol(80, 30, 1);
  Caracol2 = new Caracol(300, 30, 3);
  Caracol3 = new Caracol(500, 30, 2);
}

void draw() {
  background(0, 200, 0);
  Caracol1.avanzar();
  Caracol1.mostrar();
  Caracol2.avanzar();
  Caracol2.mostrar();
  Caracol3.avanzar();
  Caracol3.mostrar();
}
