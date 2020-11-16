
Aventura aventura;

import ddf.minim.*;
Minim minim;
AudioPlayer sonido;


void setup() {
  size(800, 600);

  minim = new Minim(this);
  sonido = minim.loadFile("la-cafeteria_1.mp3");
  sonido.loop();

  aventura= new Aventura();
  aventura.aventura();

}
void draw() { 
  aventura.jugar();
}

void keyPressed(Aventura aventura) {
}

void mousePressed() {
  aventura.pantallas();
}
