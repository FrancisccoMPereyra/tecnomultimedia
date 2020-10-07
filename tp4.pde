import ddf.minim.*;

String estado;
String [] texto = new String [18];
PImage [] imagen = new PImage [8];
PFont fuente;

Minim minim;
AudioPlayer sonido;

void setup(){
 size(800,600);

 estado = "uno";
 
 minim = new Minim(this);
 sonido = minim.loadFile("la-cafeteria_1.mp3");
 sonido.loop();
 
 for ( int i = 0 ; i < imagen.length ; i++ ) {
 imagen [i] = loadImage("Imagen " + i + ".png");
}
 
 texto [00] = " Haga click.";
 texto [1] = " Bienvenido a... \n Ghost Caffe. \n En esta cafeteria \n ayudaras con \n los deberes de \n la cafeteria, pero \n ademas hablaras con \n FANTASMAS DEL \n  \n";
 texto [2] = " MAS ALLA. \n Asi que, como es \n tu primer dia \n ve a hablar y \n si tienes suerte \n tal vez tengas una cita.";
 texto [3] = " Elije tu compañero de merienda.";
 texto [4] = " Ambos se saludan y ella \n empieza la conversacion con timidez. \n Te pregunta si sos nuevo \n en el empleo, con un tono suave. \n en el empleo, con un tono suave. \n Poco a poco ella va tomando \n confianza en ti. ";
 texto [5] = " Ambos hablan de sus gustos \n de los cuales tienen \n mucho en comun. \n Pero su tono empieza a \n ser mas melancolico.";
 texto [6] = " Empieza a llorar porque \n le recuerdas a alguien \n importante en su vida. \n La consuelas con exito, pero \n fue dificil. \n Ella te pide de verse una vez mas. \n Final Amanda.";
 texto [7] = " Los tres se presentan y te cuentan que son hermanos. \n El mas musculoso es inpulsivo y engreido, y el otro es \n tranquilo y pensativo. \n Parecen llevarse muy bien en la charla, pero \n empiezan a discutir.";
 texto [8] = " Su discucion era tan absurda que llamaban la \n atencion en toda la cafeteria. \n Les preguntas cual es el problema el cual resuelves con \n facilidad y ellos se disculpan por la pelea. \n facilidad y ellos se disculpan por la pelea. \n Antes de marcharse te dicen que les gustaria volverlo a ver. \n Final Nacho y Pablo.";
 texto [9] = " Un silencio incomodo habia en el ambiente. \n Habia una tension incomoda.";
 texto [10] = " Aquel fantasma aparecio apenas llegaste. \n Empiezas la conversacion, pero aquel ser con forma de payaso \n solo hacia multiples bromas, una peor que la otra. \n Te empiesas a sentir extraño al estar junto a el.";
 texto [11] = " Sus malas bromas causan que te empices a reir desconsoladamente. \n Tu risa va aumentando y llamas la atencion en la cafeteria \n con tu desenfrenada risa. \n Te empieza a faltar el aire, tanto que te estas poniendo morado y \n todo se te nubla hasta sentir un dolor en el pecho, muriendo de la risa \n Final Jacky.";
 texto [12] = " Nombre y Apellido: Pereyra Francisco Martin.";
 texto [13] = " Tecnologia Multimedial.";
 texto [14] = " Comision 2";
 texto [15] = " Profesor: Matias Jauregui Lorda.";
 texto [16] = " Gracias por Jugar.";
 texto [17] = " Haga click para volver a jugar.";
}

void draw(){
  
  background(255);
  
  fill(0);
  
  fuente = loadFont("AdobeDevanagari-BoldItalic-48.vlw");
  textFont(fuente);
  textSize(12);
  
  if(estado.equals("uno")){
     image(imagen[0],0,0,800,600);
     text(texto[00], 25, 500);
  }
  if(estado.equals("dos")){
     image(imagen[0],0,0,800,600);
     text(texto[1], 25, 100);
     text(texto[2], 25, 310);
     text(texto[00], 25, 500);
   }
   if(estado.equals("tres")){
     noStroke();
     fill(255);
     rect(800,600,0,0);
     image(imagen[1],100,300,150,250);
     image(imagen[2],275,300,150,250);
     image(imagen[3],425,300,150,250);
     image(imagen[4],600,300,150,250);
     fill(0);
     text(texto[3],  250,100);
   }
//-------------------------------------
   if(estado.equals("cuatro.1")){
     image(imagen[6],0,0,800,600);
     image(imagen[1],100,200,250,350);
     image(imagen[5],0,300,600,300);
     text(texto[4], 400, 200);
     text(texto[00], 400, 395);
   }
   if(estado.equals("cinco.1")){
     image(imagen[6],0,0,800,600);
     image(imagen[1],100,200,250,350);
     image(imagen[5],0,300,600,300);
     text(texto[5], 400, 200);
     text(texto[00], 400, 395);
   }
   if(estado.equals("seis.1")){
     image(imagen[6],0,0,800,600);
     image(imagen[1],100,200,250,350);
     image(imagen[5],0,300,600,300);
     text(texto[6], 400, 200);
   } 
   if(estado.equals("siete.1")){
   }
//--------------------------------------
   if(estado.equals("cuatro.2")){
     image(imagen[7],0,0,800,600);
     image(imagen[2],200,300,250,350);
     image(imagen[3],400,300,250,350);
     text(texto[6], 200, 200);
     text(texto[00], 200, 325);
   }
   if(estado.equals("cinco.2")){
     image(imagen[7],0,0,800,600);
     image(imagen[2],200,300,250,350);
     image(imagen[3],400,300,250,350);
     text(texto[7], 200, 200);
     text(texto[00], 200, 345);
   }
   if(estado.equals("seis.2")){
     image(imagen[7],0,0,800,600);
     image(imagen[2],200,300,250,350);
     image(imagen[3],400,300,250,350);
     text(texto[8], 200, 200);
   } 
   if(estado.equals("siete.2")){
   }
//--------------------------------------
   if(estado.equals("cuatro.3")){
     image(imagen[7],0,0,800,600);
     image(imagen[4],250,300,250,350);
     text(texto[9], 200, 200);
     text(texto[00], 200, 250);
   }
   if(estado.equals("cinco.3")){
     image(imagen[7],0,0,800,600);
     image(imagen[4],250,300,250,350);
     text(texto[10], 200, 200);
     text(texto[00], 200, 325);
   }
   if(estado.equals("seis.3")){
     image(imagen[7],0,0,800,600);
     image(imagen[4],250,300,250,350);
     text(texto[11], 100, 200);
   } 
   if(estado.equals("siete.3")){
   }
//------------------------------------------------
   if(estado.equals("ocho")){
   }
   if(estado.equals("nueve")){
     fill(0,255,0);
     text(texto[12], 100, 100);
     text(texto[13], 100, 125);
     text(texto[14], 100, 150);
     text(texto[15], 100, 175);
     text(texto[16], 100, 200);
     text(texto[17], 100, 225);
   }
}
