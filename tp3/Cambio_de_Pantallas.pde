boolean estoyEnBonton ( int x, int y, int r ){  

  return dist(mouseX, mouseY, x, y) <= r;
  
}

void mousePressed() {  //aca se programan los botones

  //primer recorrido

  if ( pantalla == 0  && estoyEnBonton(200, 400, 50) ) {
    pantalla = 1;
  } else if ( pantalla == 1 ) {
    pantalla = 2;
  } else if ( pantalla == 2 && estoyEnBonton(200, 400, 50)) {
    pantalla = 3;
  } else if ( pantalla == 3 ) {
    pantalla = 4;
  } else if ( pantalla == 4 && estoyEnBonton(200, 400, 50)) {
    pantalla = 5;
  } else if ( pantalla == 5 ) {
    pantalla = 6;
  }

  //segundo recorrido

  if ( pantalla == 2 && estoyEnBonton(400, 400, 50) ) {
    pantalla = 7;
  } else if ( pantalla == 7 ) {
    pantalla = 8;
  } else if ( pantalla == 8 && estoyEnBonton(400, 400, 50) ) {
    pantalla = 9;
  } else if ( pantalla == 8 && estoyEnBonton(200, 400, 50) ) {
    pantalla = 3;
  } else if ( pantalla == 9 ) {
    pantalla = 10 ;
  }

  //tercer recorrido

  if ( pantalla == 4 && estoyEnBonton(400, 400, 50) ) {
    pantalla = 11;
  } else if ( pantalla == 11 ) {
    pantalla = 12;
  } else if ( pantalla == 12 ) {
    pantalla = 13;
  } else if ( pantalla == 13 ) {
    pantalla = 14;
  } else if ( pantalla == 14 ) {
    pantalla = 15;
  }

  //créditos
  if ( pantalla == 0 && estoyEnBonton(400, 400, 50) ) {
    pantalla = 16;
  }
  
  //botones volver
  
  if ( pantalla == 6 && estoyEnBonton(300, 400, 50) ) {
    pantalla = 0;
  }
  if ( pantalla == 10 && estoyEnBonton(300, 400, 50) ) {
    pantalla = 0;
  }
  if ( pantalla == 15 && estoyEnBonton(300, 400, 50) ) {
    pantalla = 0;
  }
  if ( pantalla == 16 && estoyEnBonton(300, 400, 50) ) {
    pantalla = 0;
  }
}
