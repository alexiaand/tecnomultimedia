PImage inicio, panone, pantwo, panthree; 

float miVariable, variableColor, posX, posY, velY, botX, botY, botT, textX, textY, velX, text2X, text2Y, opacidad, circleX, circleY, circleT, distancia1, radio1, distancia2, radio2;

String título = "El Zorro";

String textoUno, textoDos, textoTres;

PFont fuenteTítulo; 

String pantalla;

int c, colorBoton;

void setup(){
  
  size( 640, 480 );
  
  textSize( 50 );
  
  inicio = loadImage("inicio.jpg");
  
  panone = loadImage("pantalla1foto.jpg");
  
  pantwo = loadImage("pantalla2foto.jpg"); 
  
  panthree = loadImage("pantalla3fotoo.jpg");
  
  fuenteTítulo = loadFont("título.vlw");
  
  posX = 210;
  
  posY = 250;
  
  velY = 1;
 
  botX = 315;
  
  botY = 303;
  
  botT= 50;
  
  textX = -240;
  
  textY = 140;
  
  opacidad = 0;
  
  circleX = 322;
  
  circleY = 376;
  
  pantalla = "inicioP";
  
  frameRate( 60 );
  
  textoUno = "Astucia, inteligencia y agilidad \ndefinen a este escurridizo \nanimal. Pertenece a la familia \nde los cánidos y suelen tener \nun tamaño pequeño. \nSu carácter independiente y \nsolitario no ha permitido que \nhayan sido domesticados.";
  
  textoDos = "Los zorros se pueden ver en prácticamente todos los \nlugares del mundo, pero el zorro común está muy extendido por \nEuropa y América del Norte. En libertad, viven aproximadamente \nunos seis años. Se identifican fácilmente por sus orejas, siempre \nen alerta, y su espesa y larga cola.";
  
  textoTres = "El zorro está activo principalmente durante \nel crepúsculo y la noche. Es generalmente \nun animal solitario, aunque también pueden \nvivir en parejas permanentes o en grupos \nde un macho y dos o tres hembras. \nCaza sobre todo por la noche. Durante \nel día permanece oculto entre los \nmatorrales o en sus madrigueras, excavadas \nen parejes secos y escondidos, a menudo \nentre las rocas, los barrancos herbosos \ny las espesuras."; 
  
  velX = 2;
  
  text2X = 13;
  
  text2Y = -17;
  
  circleT = 80;
  
}
void draw(){
  
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);
  
  variableColor = frameCount;
  
  distancia1 = dist(botX, botY, mouseX, mouseY);
  
  radio1 = botT / 2;
  
  distancia2 = dist(circleX, circleY, mouseX, mouseY);
       
  radio2 = (circleT / 2); 
  
  
//Inicio o menu.

   if ( pantalla.equals("inicioP") ) {
    
    //imagen
     image(inicio, 0, 0);
    
    //texto
     textFont(fuenteTítulo);
     
     fill( variableColor, 30, 30 );
     
     text( título, posX, posY );
     
    //botón
     if ( distancia1 < radio1 ) {
      colorBoton = 100;
      } else {
        colorBoton = 0;
      }
      
     fill( colorBoton );
     
     noStroke();
     
     circle( botX, botY, botT );
  
     
      }

//pantalla uno

    else if (pantalla.equals("pantalla1") ){
     
     //imagen    
      image( panone, 0, 0 );
      
     //texto      
      textSize( 20 );
      
      fill( 255 );
      
      text( textoUno, textX, textY );
      
    //movimiento texto
      textX = textX + velX;
     
      if( textX >= 16 ){
        velX = 0;
      }
      
     //cambio de pantalla      
      c++;  
      if( c >= 900 ){ 
        pantalla = "pantalla2";
       c = 0;  
        }  
    } 

//pantalla 2
    
   else if (pantalla.equals("pantalla2") ){
    
     //imagen
      image(pantwo, 0, 0);
      
     //texto
      textSize( 18 );
      
      text( textoDos, text2X, text2Y );
      
      //movimiento texto
      text2Y = text2Y + velY;
      
      if( text2Y >= 80 ){
        velY = 0;
     }
     
     //cambio de pantalla
      c++;  
      if( c >= 900 ){  
        pantalla = "pantalla3";
      c = 0;  
    }
    
   }
//pantalla 3    

    else if ( pantalla.equals("pantalla3") ){
      
      //imagen
       image( panthree, 0, 0 );
      
      //texto1
       textSize( 18 );
       
       opacidad = opacidad + 0.2;  
       
       fill( 210, 140, 115, opacidad );
       
       text( textoTres, 18, 28 );
       
      //botón  
      if( distancia2 < radio2 ){ 
         colorBoton = 100;
       } else {
            colorBoton = 0; 
       }
      
       noStroke(); 
       
       fill( colorBoton, opacidad );
       
       circle( circleX, circleY, circleT );
       
      //texto2
       textSize( 20 );
       
       fill( 210, 140, 115, opacidad );
       
       text( "Volver al inicio", 240, 315 );
      
   
  }
}
     

void mousePressed() {
  if( pantalla.equals("inicioP") ){
    if( dist(botX, botY, mouseX, mouseY) < 50/2 ){
      pantalla = "pantalla1";
    }
  }
 
  if( pantalla.equals("pantalla3") ){
    if( dist(circleX, circleY, mouseX, mouseY) < 50/2 ){
      pantalla = "inicioP";
   }
 }

}
 
