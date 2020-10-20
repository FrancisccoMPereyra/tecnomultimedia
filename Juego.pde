class Juego {

  Personaje p;
  Enemigo e;
  Enemigo2 e2;
  Enemigo3 e3;
  Ganar g;
  String estado;

  Juego() {
    p = new Personaje();
    e = new Enemigo();
    e2 = new Enemigo2();
    e3 = new Enemigo3();
    g = new Ganar();
    estado = "inicio";
  }

  void play() {
    if ( estado.equals("inicio") ) {
      background(0);
      fill(255);
      textSize(25);
      text("Presione Espacio", 300, 200);
      textSize(15);
      text("llegue a la puerta y esquive a los fantasmas", 250, 225);
      if ( key == ' ' ) {
        estado = "jugando";
      }
    } else if ( estado.equals("jugando") ) {
      background( 255 );
      p.saltar();
      p.dibujar();
      g.dibujar();
      e.mover();
      e.dibujar();
      e2.mover();
      e2.dibujar();
      e3.mover();
      e3.dibujar();
    }
    boolean colisiono = p.colision( e );
    boolean colisiono2 = p.colision( e2 );
    boolean colisiono3 = p.colision( e3 );
    boolean colisiono4 = p.colision( g );
    if ( colisiono || colisiono2 || colisiono3) {
      estado = "perder";
      if ( estado.equals("perder") ) {
        background(0);
        fill(255);
        textSize(25);
        text("Perdiste", 300, 200);
        textSize(15);
        text("Presione Enter para volver a jugar", 250, 225);
      }
    } else if ( colisiono4 || estado.equals("ganar")) {
      estado = "inicio";
    }
  }

  void teclas() {
    p.mover();
    if ( key == CODED && keyCode == UP ) {
      p.saltar = true;
    }
  }
}
