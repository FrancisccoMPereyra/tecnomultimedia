class Ganar {

  float x, y;
  PImage image;

  Ganar() {
    
    image = loadImage( "puerta.png" );
    
    x = 700;
    y = 300;
  }

  void dibujar() {

    image( image, x, y, 75, 100);
  }
}
