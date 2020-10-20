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
    estado = "juego";
  }

  void play() {
    if ( estado.equals("juego") ) {
      background(random(0));
      fill(255);
      textSize(25);
      text("Ves negro a tu alrededor por tanto reir y", 150, 200);
      text("llegas a un mundo de fantasmas y al fondo hay un fantasma", 50, 225);
      text("que te llama a ir con el, pero ten cuidado", 125, 250);
      text("fantasmas aparecieron para detenerte.", 175, 275);
      textSize(15);
      text("Presione Espacio", 300, 325);
      if ( key == ' ' ) {
        estado = "jugando";
      }
    } else if ( estado.equals("jugando") ) {
      background( 255 );
      p.saltar();
      p.dibujar();
      g.dibujar();
      g.mover();
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
        text("Vuelves a la realidad, pero sientes un frio por", 150, 200);
        text("todo tu cuerpo, caes al suelo sin aire sin", 200, 225);
        text("poder moverte.", 300, 250);
        textSize(15);
        text("Final Jacky, haga Click", 300, 300);
        text("En este caso presione Enter para reiniciar", 275, 325);
        //otra version seria que el protagonista muere y se transforma en un fantasma y es él el que se vuelve un fantasma que concurre a la cafeteria
      }
    }
    if ( colisiono4 || estado.equals("ganar")) {
      background(0);
      fill(255);
      textSize(25);
      text("En esta parte del juego pienso continuarlo", 150, 200);
      text("con un personaje que tengo diseñado con quien", 100, 225);
      text("tendras un final con un fantasma que te salva", 100, 250);
      textSize(15);
      text("Fin Mr. Phantom, haga Click", 300, 300);
      text("En este caso presione Enter para reiniciar", 275, 325);
    }
  }

  void teclas() {
    p.mover();
    if ( key == CODED && keyCode == UP ) {
      p.saltar = true;
    }
  }
}
