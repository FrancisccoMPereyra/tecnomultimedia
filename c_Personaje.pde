class Personaje {

  float x, y;
  PImage p, fondo;
  int indice = 0;
  boolean Derecha;
  boolean saltar = false;
  float s = 3.7;


  Personaje() {
    
    Derecha=false;
    x = 100; 
    y = 350;
    p = loadImage( "Personaje.png");
    fondo = loadImage( "Fondo.png");
  }

  void dibujar() {

    image( fondo, 0, 0, 800, 400);
    image( p, x, y, 50, 50);
  }

 void mover() {
   
    if ( keyCode == RIGHT ) {
      x += 1.50;
      Derecha = true;
    }
    if ( keyCode == LEFT ) {
      x -= 1.50;
      Derecha = false;
    }
  }

  void saltar() {

    if ( saltar ) {
      indice = 1;
      y -= s;
      s -= 0.1;
      if ( y >= 350 ) {
        indice = 0;
        y = 350;
        s = 3.7;
        saltar = false;
      }
    }
  }
}
