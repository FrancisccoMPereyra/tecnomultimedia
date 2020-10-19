class Enemigo {

  float x, y, xInicio;
  float vel;
  PImage image;

  Enemigo() {
    image = loadImage( "fantasmita2.png" );
    int Image = image.height;
    println(Image);

    x = xInicio = 900;
    y = 350;
    vel = 3;
  }

  void dibujar() {

    pushMatrix();
    translate( x, y );
    image( image, 0, 0, 50, 50);
    popMatrix();
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
    int Image = image.height;
    println(Image);

    x = xInicio = 900;
    y = 350;
    vel = 1;
  }

  void dibujar() {

    pushMatrix();
    translate( x, y );
    image( image, 0, 0, 50, 50);
    popMatrix();
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
    int Image = image.height;
    println(Image);

    x = xInicio = -50;
    y = 350;
    vel = 0.4;
  }

  void dibujar() {

    pushMatrix();
    translate( x, y );
    image( image, 0, 0, 50, 50);
    popMatrix();
  }

  void mover() {
    x += vel;
    if ( x >= 850 ) {
      x = xInicio;
    }
  }
}
