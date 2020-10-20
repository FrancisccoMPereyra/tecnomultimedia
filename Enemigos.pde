//intente resumir las 3 clases de distintos enemigos en uno solo, pero no fui capas de hacerlo, 
//no me detectaba la colision con los enemigos o no me los dibujaba o me tiraba error. 
//Para el trabajo final que sera en grupo, si elegimos esta aventura grafica pienso ser capaz de hacerlo.

class Enemigo {

  float x, y, xInicio;
  float vel;
  PImage image;

  Enemigo() {

    image = loadImage( "fantasmita1.png" );

    x = xInicio = 900;
    y = 350;
    vel = 2.5;
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

    image = loadImage( "fantasmita0.png" );

    x = xInicio = 900;
    y = 350;
    vel = 0.8;
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

    image = loadImage( "fantasmita2.png" );

    x = xInicio = -50;
    y = 350;
    vel = 0.3;
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
