class Ganar {

  float x, y, yInicio;
  float vel;
  PImage image;

  Ganar() {

    image = loadImage( "Personaje.png" );

    x = 700;
    y = yInicio = 425;
    vel = 1;
  }

  void dibujar() {

    image( image, x, y, 50, 50);
  }

  void mover() {
    y -= vel;
    if ( y <= -50) {
      y = yInicio;
    }
  }

  boolean colision( Personaje p ) {
    boolean r = false;
    float distancia = dist( x, y, p.x, p.y );
    if ( distancia < 55 )
      r = true;
    return( r );
  }
}
