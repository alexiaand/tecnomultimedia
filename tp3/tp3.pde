
int pantalla;
int cantimg = 17;

PImage[] ilustracion = new PImage[cantimg];


void setup() {

  size(600, 600);
  
  for (int ilust = 0; ilust < cantimg; ilust++) {
    ilustracion[ilust] = loadImage("escena" + ilust + ".jpg");
  }
  
}

void draw() {

  background(150);

  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);

  switch(pantalla) {

  case 0:

  image(ilustracion[0], 0, 0, 600, 440);
    for ( int i = 200; i <= 400; i+=200) {

      if ( i == 200 ) {
        miBoton( i, 420, 100, "siguiente" );
      }

      if ( i == 400) {
        miBoton( i, 420, 100, "hola" );
      }
    }

    break;


    //pantalla uno

  case 1:
    background( 200, 0, 0 );

    textSize( 40 );
    textAlign( LEFT, CENTER );
    fill( 255 );
    text( "Estado: " + pantalla, 100, 100 );

    println( "P01" );



    break;
  case 2:
    background( 0, 200, 0 );
    fill( 200, 200, 0);
    rect(0, 0, 300, 600);

    textSize( 40 );
    fill( 255 );
    text( "Estado: " + pantalla, 100, 100 );

    println( "P02" );

    for ( int i = 200; i <= 400; i+=200) {

      if ( i == 200 ) {
        miBoton( i, 420, 100, "siguiente" );
      }

      if ( i == 400) {
        miBoton( i, 420, 100, "hola" );
      }
    }

    break;
  case 3:
    background( 0, 0, 200 );

    textSize( 40 );
    textAlign( LEFT, CENTER );
    fill( 255 );
    text( "Estado: " + pantalla, 100, 100 );

    println( "P03" );
    break;

  case 4:

    background( 0, 200, 200 );

    textSize( 40 );
    fill( 255 );
    text( "Estado: " + pantalla, 100, 100 );

    println( "P04" );

    for ( int i = 200; i <= 400; i+=200) {

      if ( i == 200 ) {
        miBoton( i, 420, 100, "siguiente" );
      }

      if ( i == 400) {
        miBoton( i, 420, 100, "hola" );
      }
    }

    break;

  case 5:

    background( 0, 200, 200 );

    textSize( 40 );
    fill( 255 );
    text( "Estado: " + pantalla, 100, 100 );

    println( "P05" );

    break;

  case 6:

    background( 0, 200, 200 );

    textSize( 40 );
    fill( 255 );
    text( "Estado: " + pantalla, 100, 100 );

    println( "P06" );

    break;

  case 7:

    background( 0, 200, 200 );

    textSize( 40 );
    fill( 255 );
    text( "Estado: " + pantalla, 100, 100 );

    println( "P07" );

    break;

  case 8:

    background( 0, 200, 200 );

    textSize( 40 );
    fill( 255 );
    text( "Estado: " + pantalla, 100, 100 );

    println( "P08" );

    for ( int i = 200; i <= 400; i+=200) {

      if ( i == 200 ) {
        miBoton( i, 420, 100, "siguiente" );
      }

      if ( i == 400) {
        miBoton( i, 420, 100, "hola" );
      }
    }

    break;

  case 9:

    background( 0, 200, 200 );

    textSize( 40 );
    fill( 255 );
    text( "Estado: " + pantalla, 100, 100 );

    println( "P09" );

    break;

  case 10:

    background( 0, 200, 200 );

    textSize( 40 );
    fill( 255 );
    text( "Estado: " + pantalla, 100, 100 );

    println( "P10" );

    break;

  case 11:

    background( 0, 200, 200 );

    textSize( 40 );
    fill( 255 );
    text( "Estado: " + pantalla, 100, 100 );

    println( "P11" );

    break;

  case 12:

    background( 0, 200, 200 );

    textSize( 40 );
    fill( 255 );
    text( "Estado: " + pantalla, 100, 100 );

    println( "P12" );

    break;

  case 13:

    background( 0, 200, 200 );

    textSize( 40 );
    fill( 255 );
    text( "Estado: " + pantalla, 100, 100 );

    println( "P13" );

    break;

  case 14:

    background( 0, 200, 200 );

    textSize( 40 );
    fill( 255 );
    text( "Estado: " + pantalla, 100, 100 );

    println( "P14" );

    break;

  case 15:

    background( 0, 200, 200 );

    textSize( 40 );
    fill( 255 );
    text( "Estado: " + pantalla, 100, 100 );

    println( "15" );

    break;

  case 16:

    background( 0, 200, 200 );

    textSize( 40 );
    fill( 255 );
    text( "Estado: " + pantalla, 100, 100 );

    println( "16" );

    miBoton( 300, 420, 100, "siguiente" );

    break;
  }
}

void mousePressed() {  //aca se programan los botones

  //primer recorrido

  if ( pantalla == 0 && estoyEnBonton(200, 400, 50) ) {
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
    pantalla = 3;
  } else if ( pantalla == 8 && estoyEnBonton(400, 400, 50) ) {
    pantalla = 9;
  } else if ( pantalla == 9 ) {
    pantalla = 10;
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
}
