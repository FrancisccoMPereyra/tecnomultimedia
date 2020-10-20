class Personaje {

  float x, y;
  PImage p, fondo;
  int indice = 0;
  boolean Derecha = true;
  boolean saltar = false;
  float s = 3.7;

  Personaje() {

    x = 100; 
    y = 350;
    p = loadImage( "Personaje.png");
    fondo = loadImage( "Fondo.jpg");
  }

  void dibujar() {

    image( fondo, 0, 0, 800, 400);

    image( p, x, y, 50, 50);
  }

  void mover() {

    if ( keyCode == RIGHT ) {
      x += 10;
      Derecha = true;
    }
    if ( keyCode == LEFT ) {
      x -= 10;
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

  boolean colision( Enemigo e ) {
    boolean r = false;
    float distancia = dist( x, y, e.x, e.y );
    if ( distancia < 45 )
      r = true;
    return( r );
  }
  boolean colision( Enemigo2 e2 ) {
    boolean r = false;
    float distancia = dist( x, y, e2.x, e2.y );
    if ( distancia < 45 )
      r = true;
    return( r );
  }  
  boolean colision( Enemigo3 e3 ) {
    boolean r = false;
    float distancia = dist( x, y, e3.x, e3.y );
    if ( distancia < 45 )
      r = true;
    return( r );
  }  
  boolean colision( Ganar g ) {
    boolean r = false;
    float distancia = dist( x, y, g.x, g.y );
    if ( distancia < 55 )
      r = true;
    return( r );
  }
}
