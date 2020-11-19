


class Aventura {
  String estado="uno";
  float s, m, time;
  String [] texto = new String [21];
  PImage [] imagen = new PImage [8];
  PFont fuente;
  AudioPlayer uf;
  Juego juego;



  void aventura() {

    uf = minim.loadFile("uf.mp3");

    juego = new Juego();

    time=0.5;

    texto [0] = " Haga click.";
    texto [1] = " Bienvenido a... \n Ghost Caffe. \n En esta cafeteria \n ayudaras con \n los deberes de \n la cafeteria, pero \n ademas hablaras con \n FANTASMAS DEL \n  \n";
    texto [2] = " MAS ALLA. \n Asi que, como es \n tu primer dia \n ve a hablar y \n si tienes suerte \n tal vez tengas una cita.";
    texto [3] = " Elije tu compañero de merienda.";
    texto [4] = " Ambos se saludan y ella \n empieza la conversacion con timidez. \n Te pregunta si sos nuevo \n en el empleo, con un tono suave. \n en el empleo, con un tono suave. \n Poco a poco ella va tomando \n confianza en ti. ";
    texto [5] = " Ambos hablan de sus gustos \n de los cuales tienen \n mucho en comun. \n Pero su tono empieza a \n ser mas melancolico.";
    texto [6] = " Empieza a llorar porque \n le recuerdas a alguien \n importante en su vida. \n La consuelas con exito, pero \n fue dificil. \n Ella te pide de verse una vez mas. \n Final Amanda.";
    texto [7] = " Los tres se presentan y te cuentan que son hermanos. \n El mas musculoso es impulsivo y engreido, y el otro es \n tranquilo y pensativo. \n Parecen llevarse muy bien en la charla, pero \n empiezan a discutir.";
    texto [8] = " Su discucion era tan absurda que llamaban la \n atencion en toda la cafeteria. \n Les preguntas cual es el problema el cual resuelves con \n facilidad y ellos se disculpan por la pelea. \n Antes de marcharse te dicen que les gustaria volverlo a ver. \n Final Nacho y Pablo.";
    texto [9] = " Un silencio incomodo habia en el ambiente. \n Habia una tension incomoda.";
    texto [10] = " Aquel fantasma aparecio apenas llegaste. \n Empiezas la conversacion, pero aquel ser con forma de payaso \n solo hacia multiples bromas, una peor que la otra. \n Te empiezas a sentir extraño al estar junto a el.";
    texto [11] = " Sus malas bromas causan que te empices a reir desconsoladamente. \n Tu risa va aumentando y llamas la atencion en la cafeteria \n con tu desenfrenada risa. \n Te empieza a faltar el aire, tanto que te estas poniendo morado y \n todo se te nubla hasta sentir un dolor en el pecho y todo se pone negro \n a tu alrededor.";
    texto [12] = " Integrantes: Pereyra Francisco Martin y Jorge Francisco Ferretti.";
    texto [13] = " Tecnologia Multimedial.";
    texto [14] = " Comision 2";
    texto [15] = " Profesor: Matias Jauregui Lorda.";
    texto [16] = " Gracias por Jugar.";
    texto [17] = " Haga click para volver a jugar.";
    texto [18] = "Ves negro a tu alrededor por tanto reir y \n llegas a un mundo de fantasmas y al fondo hay un fantasma \n que te llama a ir con el, pero ten cuidado \n fantasmas aparecieron para detenerte. \n Haga click";
    texto [19] = "Todo se pone oscuro a tu alrederdor, frio y lejano. \n Sientes como tu cuerpo se evapora. \n Final Jacky, haga Click";
    texto [20] = " Fue dificil sacarte de ahi, ten mas cuidado con que fantasmas hablas \n Ahora, como favor por ayudarte me gustaria una tasa de te.";

    sonido.loop();

    for ( int i = 0; i < imagen.length; i++ ) {
      imagen [i] = loadImage("Imagen " + i + ".png");
    }
  }
  //--------------------------------------------------------------
  void jugar() {
    println(estado);

    s= millis()/1000;
    background(255);

    fill(0);

    fuente = loadFont("AdobeDevanagari-BoldItalic-48.vlw");
    textFont(fuente);
    textSize(12);

    if (estado.equals("uno")) {

      if (sonido.isPlaying())      
      {
      } else  {
        sonido.loop();
      }

      image(imagen[0], 0, 0, width, height);
      text(texto[00], width/14, height/3);
    } else if (estado.equals("dos")) {
      image(imagen[0], 0, 0, width, height);
      text(texto[1], width/16, height/6);
      text(texto[2], width/16, height/2+15);
      text(texto[00], width/16, height/2+200);
    } else if (estado.equals("tres")) {
      noStroke();
      fill(255);
      rect(800, 600, 0, 0);
      image(imagen[1], width/16, height/2, width/4, height/4);
      image(imagen[2], width/10+175, height/2, width/4, height/4);
      image(imagen[3], width/8+275, height/2, width/4, height/4);
      image(imagen[4], width/4+350, height/2, width/4, height/4);
      fill(0);
      text(texto[3], width/2-150, height/2-250);
    }
    //-------------------------------------
    else if (estado.equals("cuatro.1")) {
      image(imagen[1], width/2-300, height/2-50, width/2.50, height/2.50);
      image(imagen[5], width/2-300, height/2, width/2, height/2);
      text(texto[4], width/2, height/2-100);
      text(texto[00], width/2, height/2+100);
    } else if (estado.equals("cinco.1")) {
      image(imagen[1], width/2-300, height/2-50, width/2.50, height/2.50);
      image(imagen[5], width/2-300, height/2, width/2, height/2);
      text(texto[5], width/2, height/2-100);
      text(texto[00], width/2, height/2+100);
    } else if (estado.equals("seis.1")) {
      image(imagen[1], width/2-300, height/2-50, width/2.50, height/2.50);
      image(imagen[5], width/2-300, height/2, width/2, height/2);
      text(texto[6], width/2, height/2-100);
    }
    //--------------------------------------
    else if (estado.equals("cuatro.2")) {
      image(imagen[6], 0, 0, width, height);
      image(imagen[2], width/2-300, height-225, width/2-50, height/2-50);
      image(imagen[3], width/2-50, height-225, width/2-50, height/2-50);
      text(texto[7], width/2-200,height/2-100);
      text(texto[00], width/2-200,height/2+50);
    } else if (estado.equals("cinco.2")) {
      image(imagen[6], 0, 0, width, height);
      image(imagen[2], width/2-300, height-225, width/2-50, height/2-50);
      image(imagen[3], width/2-50, height-225, width/2-50, height/2-50);
      text(texto[8], width/2-200,height/2-100);
    }
    //--------------------------------------
    else if (estado.equals("cuatro.3")) {
      image(imagen[6], 0, 0, width, height);
      image(imagen[4], width/2-100, height-225, width/2-50, height/2-50);
      text(texto[9], width/2-200,height/2-100);
      text(texto[00], width/2-200,height/2+50);
    } else if (estado.equals("cinco.3")) {
      image(imagen[6], 0, 0, width, height);
      image(imagen[4], width/2-200, height-225, width/2-50, height/2-50);
      text(texto[10], width/2-300,height/2-100);
      text(texto[00], width/2-300,height/2+50);
    } else if (estado.equals("seis.3")) {
      image(imagen[6], 0, 0, width, height);
      image(imagen[4], width/2-200, height-225, width/2-50, height/2-50);
      text(texto[11], width/2-300,height/2-100);
      text(texto[00], width/2-300,height/2+50);
    }
    //------------------------------------------------
    else if ( estado.equals("juego") ) {
      background(0);
      textSize(10);
      fill(255);
      text(texto[18],height/2-200, width/16);
    } else if (estado.equals("jugando")) {

      sonido.pause();
      juego.play(aventura);
      juego.teclas();
    } else if ( estado.equals("perder") ) {
      uf.play();
      text(texto[19], width/4, height/5);
    }
    if ( estado.equals("ganar") ) { 
      background(255);
      image( imagen[7], width/2, height/2, width/4, height/4);
      text (texto[20], width/16, height/5);
    } 
    if (estado.equals("ganar2")) {
      sonido.play();
      image( imagen[7], width/2, height/2,width/4, height/4);
      text (" Final Mr.Phantom.", width/4, height/5);
    }
    //------------------------------------------------
    else if (estado.equals("cero")) {
      fill(0, 255, 0);
      text(texto[12], 100, 100);
      text(texto[13], 100, 125);
      text(texto[14], 100, 150);
      text(texto[15], 100, 175);
      text(texto[16], 100, 200);
      text(texto[17], 100, 225);
    }
  }

  //-------------FUNCION ESTADOS-----------------------
  void cdp(String estado1, String estado2) {
    if (mousePressed && estado.equals(estado1)&&s-m>time) {
      estado=estado2 ;
      m=s;
    }
  }

  //----------------FUNCIÓN BOTÓN-----------------------

  void boton(String estado1, String estado2, float x, float y, float tamx, float tamy) {
    if (estado.equals(estado1)&& mousePressed && mouseX<x+tamx && mouseY<y+tamy && mouseX>x-tamx && mouseY>y-tamy&& s-m>time) {
      estado=estado2;
      m=s;
    }
  }

  void cambiarEstado( String nuevoEstado ) {
    estado = nuevoEstado;
    println( estado );
  }

  //----------------ESTADOS Y BOTONES-------------------
  void pantallas() {
    cdp("uno", "dos");
    cdp("dos", "tres");
    boton("tres", "cuatro.1", width/16, height/2, width/4, height/4);
    boton("tres", "cuatro.2", width/10+175, height/2, width/4, height/4);
    boton("tres", "cuatro.3", width/4+400, height/2, width/4, height/4);
    //------------------------------------------
    cdp("cuatro.1", "cinco.1");
    cdp("cinco.1", "seis.1"); 
    cdp("seis.1", "cero");
    //-------------------------------------------
    cdp("cuatro.2", "cinco.2");
    cdp("cinco.2", "cero"); 
    //-------------------------------------------
    cdp("cuatro.3", "cinco.3");
    cdp("cinco.3", "seis.3"); 
    cdp("seis.3", "juego");
    cdp("juego", "jugando");
    cdp("perder", "cero");
    cdp("ganar", "ganar2");
    cdp("ganar2", "cero");
    //--------------------------------------------
    //--------------------------------------------
    cdp("cero", "uno");
  }
}
