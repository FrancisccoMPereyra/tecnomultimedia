class Enemigo {

  float x, y, xInicio;
  float vel;
  PImage image;

  Enemigo() {
    
    image = loadImage( "fantasmita2.png" );

    x = xInicio = 900;
    y = 350;
    vel = 3;
  }

  void dibujar() {

    image( image, x, y, 50, 50);
  }

  void mover() {
    x -= vel;
    if ( x <= -50 ) {
      x = xInicio;
    }
  }
}


class Enemigo2 {

  float x, y, xInicio;
  float vel;
  PImage image;

  Enemigo2() {
    
    image = loadImage( "fantasmita1.png" );
    
    x = xInicio = 900;
    y = 350;
    vel = 1;
  }

  void dibujar() {

    image( image, x, y, 50, 50);
  }

  void mover() {
    x -= vel;
    if ( x <= -50 ) {
      x = xInicio;
    }
  }
}
class Enemigo3 {

  float x, y, xInicio;
  float vel;
  PImage image;

  Enemigo3() {
    
    image = loadImage( "fantasmita3.png" );

    x = xInicio = -50;
    y = 350;
    vel = 0.4;
  }

  void dibujar() {


    image( image, x, y, 50, 50);
  }

  void mover() {
    x += vel;
    if ( x >= 850 ) {
      x = xInicio;
    }
  }
}
