function keyPressed() {
  
  // Movimiento del personaje nivel 1.
  if(pantalla === "juego") {
    if (keyCode === UP_ARROW) {    
      yPer -= 10;
      caperucitaFrame = 1;
  }
   if(keyCode === DOWN_ARROW) {
     yPer += 10;
     caperucitaFrame = 0;
  }
   if(keyCode === RIGHT_ARROW) {
     xPer += 10;
     caperucitaFrame = 3;
  }
   if(keyCode === LEFT_ARROW) {
     xPer -= 10;
     caperucitaFrame = 2;
    }
  }
 // Movimiento de Caperucita en nivel 2.
  if(pantalla === "juegoNivel2") {
    if (keyCode === UP_ARROW) {    
      yPerNivel2 -= 10;
      caperucitaFrame = 1;
  }
   if(keyCode === DOWN_ARROW) {
     yPerNivel2 += 10;
     caperucitaFrame = 0;
  }
   if(keyCode === RIGHT_ARROW) {
     xPerNivel2 += 10;
     caperucitaFrame = 3;
  }
   if(keyCode === LEFT_ARROW) {
     xPerNivel2 -= 10;
     caperucitaFrame = 2;
   }
 } 
  
// Movimiento de Caperucita en nivel 3.
  if(pantalla === "juegoNivel3"){
     if (keyCode === UP_ARROW) {    
      yPerNivel3 -= 10;
      caperucitaFrame = 1;
  }
   if(keyCode === DOWN_ARROW) {
     yPerNivel3 += 10;
     caperucitaFrame = 0;
  }
   if(keyCode === RIGHT_ARROW) {
     xPerNivel3 += 10;
     caperucitaFrame = 3;
  }
   if(keyCode === LEFT_ARROW) {
     xPerNivel3 -= 10;
     caperucitaFrame = 2;
  }
  }

// Movimiento de Caperucita en nivel 4.
  if(pantalla === "juegoNivel4"){
     if (keyCode === UP_ARROW) {    
      yPerNivel4 -= 10;
      caperucitaFrame = 1;
  }
   if(keyCode === DOWN_ARROW) {
     yPerNivel4 += 10;
     caperucitaFrame = 0;
  }
   if(keyCode === RIGHT_ARROW) {
     xPerNivel4 += 10;
     caperucitaFrame = 3;
  }
   if(keyCode === LEFT_ARROW) {
     xPerNivel4 -= 10;
     caperucitaFrame = 2;
  } 
 }
}


function resetGame(){
  tiempoInicio = millis();
  vidas = 3;
  colision = false;
  caperucitaFrame = 1; 

  // Variables para el nivel 1
  xPer = 400;
  yPer = 720;
  d = d2 = 80;
  xVil = 170;
  yVil = 400;
  limitesPantalla = true;
  limitesVillano = true;
  velLoboX = velLoboY = 1.5;

  // Variables para el nivel 2
  xPerNivel2 = 400;
  yPerNivel2 = 720;
  xVilNivel2 = 500;
  yVilNivel2 = 500;
  velLoboXNivel2 = velLoboYNivel2 = 2.5;
  
  // Variables para el nivel 3
  xPerNivel3 = 400;
  yPerNivel3 = 720;
  xVilNivel3 = 500;
  yVilNivel3 = 500;
  velLoboXNivel3 = velLoboYNivel3 = 3;
  
  // Variables para el nivel 4
  xPerNivel4 = 400;
  yPerNivel4 = 720;
  xVilNivel4 = 400;
  yVilNivel4 = 500;
  velLoboXNivel4 = velLoboYNivel4 = 3.4;

    
  pantalla = "inicio";
  }
  
  function preload(){
  inicio = loadImage("assets/inicio.png");
  juego = loadImage("assets/juego.jpg");
  sig = loadImage("assets/siguienteN.png");
  bot1 = loadImage("assets/jugarBot.png");
  bot2 = loadImage("assets/reglasBot.png");
  bot3 = loadImage("assets/creditosBot.png");
  bot4 = loadImage("assets/seguirBot.png");
  bot5 = loadImage("assets/menuBot.png");
  ganaste = loadImage("assets/ganaste.png");
  perdiste = loadImage("assets/perdiste.png");
  reglas = loadImage("assets/instrucciones.png");
  creditos = loadImage("assets/creditos.jpg");
  caperucitaB = loadImage("assets/caperucitaE.png");
  caperucitaD = loadImage("assets/caperucitaD.png");
  jugadorSS = loadImage("assets/spriteSS.png");
  loboSS = loadImage("assets/lobosSS.png");
  textoF = loadFont("assets/arcadeFont.TTF");
}
