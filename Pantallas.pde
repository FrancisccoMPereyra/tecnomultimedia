
void mousePressed(){
  if( estado == "uno" ){
   estado = "dos";
  } else if( estado == "dos"){
   estado = "tres"; 
  } else if(mouseX>100 && mouseX<200 && mouseY>400 && mouseY<600 && estado == "tres"){
    estado = "cuatro.1";
  } else if (mouseX>200 && mouseX<600 && mouseY>400 && mouseY<600 && estado == "tres"){
    estado = "cuatro.2";
  } else if (mouseX>600 && mouseX<800 && mouseY>400 && mouseY<600 && estado == "tres"){
    estado = "cuatro.3";
  }
//------------------------------------------
  if( estado == "cuatro.1" ){
   estado = "cinco.1"; 
  } else if( estado == "cinco.1"){
   estado = "seis.1"; 
  } else if( estado == "seis.1"){
   estado = "siete.1"; 
  }
//-------------------------------------------
   if( estado == "cuatro.2" ){
   estado = "cinco.2"; 
  } else if( estado == "cinco.2"){
   estado = "seis.2"; 
  } else if( estado == "seis.2"){
   estado = "siete.2"; 
  }
//-------------------------------------------
  if( estado == "cuatro.3" ){
   estado = "cinco.3"; 
  } else if( estado == "cinco.3"){
   estado = "seis.3"; 
  } else if( estado == "seis.3"){
   estado = "siete.3"; 
  }
//-------------------------------------------
  if( estado == "siete.1" ){
   estado = "ocho"; 
  } else if( estado == "siete.2"){
   estado = "ocho"; 
  } else if( estado == "siete.3"){
   estado = "ocho"; 
  }
//--------------------------------------------
  if( estado == "ocho"){
   estado = "nueve"; 
  } else if( estado == "nueve"){
   estado = "uno"; 
  }
}
