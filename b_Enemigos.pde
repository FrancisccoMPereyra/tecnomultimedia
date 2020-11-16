
class Enemigo {
  int cantf=3;
  float x, y, xInicio,yInicio,xInicio2;
  PImage [] im = new PImage [cantf];

  Enemigo(float xi) {

    im[0] = loadImage( "fantasmita0.png" );
    im[1] = loadImage( "fantasmita1.png" );
    im[2] = loadImage( "fantasmita2.png" );

    x = xInicio=xi;
    
    x = xInicio2 = -50;

    y = yInicio=350;
  }

  void dibujar(int f) {

    image(im[f], x, y, 50, 50);
  }

  void mover(float vel, boolean xy) {

    if (xy) {
      x -=vel;
      if ( x <= -50 ) {
        x = xInicio;
      }
    } else {
      x+=vel;
      if (x >= 850) {
        x = xInicio2;
      }
    }
  }
  boolean colision( Personaje p ) {
    boolean r = false;
    float distancia = dist( x, y, p.x, p.y );
    if ( distancia < 45 )
      r = true;
    return( r );
  }
}
