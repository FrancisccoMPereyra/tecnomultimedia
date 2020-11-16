class Juego {

  Personaje p;
  Ganar g;
  Enemigo [] e;
  String estado;

  Juego() {
    p = new Personaje();
    g = new Ganar();
    estado = "juego";
    e=new Enemigo [3];

    e[1]=new Enemigo(900);
    e[0]=new Enemigo(500);
  }

  void play(Aventura aventura) {
    background( 255 );
    p.saltar();
    p.dibujar();
    g.dibujar();
    g.mover();

    e[1].mover(2, true);
    e[1].dibujar(1);
    e[0].mover(1.5, false);
    e[0].dibujar(2);

    boolean colisiono4 = g.colision( p );

    for (int i=0; i<2; i++) {

      boolean colisiono = e[i].colision(p);

      if ( colisiono ) {
        aventura.cambiarEstado("perder");
      }
    }
    if ( colisiono4) {
      aventura.cambiarEstado("ganar");
    }
  }
  void teclas() {
    p.mover();
    if (keyCode == UP && key == CODED) {
      p.saltar = true;
    }
  }
  
  void reset(){
  
  p.x=width/11;
  p.y=350;
  
  }
}
