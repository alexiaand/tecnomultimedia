//alexia Anduaga 94020/9
// video ----> https://www.youtube.com/watch?v=rR5YLek0mzc



//variables pantalla juego
let pantalla = "inicio";
let limitesPantalla, limitesVillano;
let vidas, colision;
let jugadorSS;
let caperucitaFrame = 1; 
let loboFrame = 0;
let xPer, yPer, d, xVil, yVil, d2, xPerNivel2, yPerNivel2, xVilNivel2, yVilNivel2, xPerNivel3, yPerNivel3, xVilNivel3, yVilNivel3, xPerNivel4, yPerNivel4, xVilNivel4, yVilNivel4;
let velLoboX, velLoboY, velLoboXNivel2, velLoboYNivel2, velLoboXNivel3, velLoboYNivel3, velLoboXNivel4, velLoboYNivel4;
let textoF;

function setup() {
  createCanvas(800, 800);
  imageMode(CENTER);
  rectMode(CENTER);
  textFont(textoF);

  resetGame();
  vistaJugador = jugadorSS.get(0, 0, 57, 70);
}

function draw() {
// Lógica de pantallas
  
  if(vidas === 0){
     pantalla = "perdiste";
      }

//pantalla inicio
  if(pantalla === "inicio"){
    image( inicio, 400, 400, 800, 800);
    
 //botones
    image( bot1, 390, 510, 200, 200); 
    image( bot2, 388, 600, 200, 200); 
    image( bot3, 392, 710, 200, 200); 
    
 //interactividad de botones
    if(mouseIsPressed && dist(mouseX, mouseY, 390, 500) < 30){
      pantalla = "juego";
    }
    if(mouseIsPressed && dist(mouseX, mouseY, 390, 600) < 30){
      pantalla = "reglas";
    }
    if(mouseIsPressed && dist(mouseX, mouseY, 390, 700) < 30){
      pantalla = "creditos";
    }
  }
// Pantalla juego
  if (pantalla === "juego") {
      image( juego, 400, 400, 800, 800);
    
  // Caperucita
    noFill();
    noStroke();
    ellipse(xPer, yPer, 60, d);
    image(jugadorSS, xPer, yPer, 57, 90, caperucitaFrame * 57, 0, 57, 90);
    if(keyIsDown(RIGHT_ARROW)){
      caperucitaFrame = 3;
    }else if (keyIsDown(LEFT_ARROW)){
      caperucitaFrame = 2;
    }else if (keyIsDown(UP_ARROW)){
      caperucitaFrame = 1;
    }else if (keyIsDown(DOWN_ARROW)){
      caperucitaFrame = 0;
    }
     
  
     // Los límites en los que el jugador puede moverse.
      if (xPer > width - (100 + d / 2)) {
       xPer = width - (100 + d / 2); // Evita que Caperucita salga por la derecha
      }
      if (xPer < (100 + d / 2)) {
       xPer = (100 + d / 2); // Evita que Caperucita salga por la izquierda
      }
      if (yPer > height - d / 2) {
       yPer = height - d / 2; // Evita que Caperucita salga por abajo
      }
      if(yPer <= 60){
       pantalla = "siguienteN2";
      } 

   // El lobo
      ellipse(xVil, yVil, 60, d2);
      fill(0);
      image(loboSS, xVil, yVil, 80, 100, loboFrame * 57, 0, 57, 90);

      xVil += velLoboX;
      yVil += velLoboY;

    // El lobo rebota al chocar con el lado derecho y se mueve hacia la izquierda.
      if (xVil >= width - (100 + d2 / 2)) {
       velLoboX = -1;
       loboFrame = 2; // Cambia el frame del lobo
      } 

   // El lobo rebota al chocar con el lado izquierdo y se mueve hacia la derecha.
      if (xVil <= (100 + d2 / 2)) {
       velLoboX = 1;
       loboFrame = 3;
      }
  
   // El lobo rebota al chocar con la parte superior e inferior.
      if (yVil <= 150 + d2 / 2 ) {
       velLoboY *= -1;
       loboFrame = 0;
      }
      if (yVil >= height - (150 + d2 / 2)) {
       velLoboY *= -1;
       loboFrame = 1;
      }
    
   //colision de personajes
      textSize(30);
      text("Vidas  " + vidas, 80, 60);
      if(dist(xPer, yPer, xVil, yVil) < d && colision == false){
        vidas -= 1;
        colision = true;
      }
      if(dist(xPer, yPer, xVil, yVil) > d){
        colision = false;
      }
    }
  
  if(pantalla === "siguienteN2"){
    image(sig, 400, 400);
    image( bot4, 230, 520, 200, 200); 
    image( bot5, 560, 510, 200, 200); 

    if(mouseIsPressed && dist(mouseX, mouseY, 230, 520) < 30){
      pantalla = "juegoNivel2";
    }
    if(mouseIsPressed && dist(mouseX, mouseY, 560, 510) < 30){
      resetGame();
    }
    
  }
  
  // Pantalla juegoNivel2
  if (pantalla === "juegoNivel2") {
    image( juego, 400, 400, 800, 800);
    
    // Caperucita para nivel 2
    noFill();
    noStroke();
    ellipse(xPerNivel2, yPerNivel2, 60, d);
    image(jugadorSS, xPerNivel2, yPerNivel2, 57, 90, caperucitaFrame * 57, 0, 57, 90);
    if(keyIsDown(RIGHT_ARROW)){
      caperucitaFrame = 3;
    }else if (keyIsDown(LEFT_ARROW)){
      caperucitaFrame = 2;
    }else if (keyIsDown(UP_ARROW)){
      caperucitaFrame = 1;
    }else if (keyIsDown(DOWN_ARROW)){
      caperucitaFrame = 0;
    }

    // Los límites en los que el jugador puede moverse para nivel 2
    if (xPerNivel2 > width - (100 + d / 2)) {
      xPerNivel2 = width - (100 + d / 2);
    }
    if (xPerNivel2 < (100 + d / 2)) {
      xPerNivel2 = (100 + d / 2);
    }
    if (yPerNivel2 > height - d / 2) {
      yPerNivel2 = height - d / 2;
    }
    
    // El lobo para nivel 2
    ellipse(xVilNivel2, yVilNivel2, 60, d2);
    fill(0);
    image(loboSS, xVilNivel2, yVilNivel2, 80, 100, loboFrame * 57, 0, 57, 90);
    xVilNivel2 += velLoboXNivel2;
    yVilNivel2 += velLoboYNivel2;

    // El lobo rebota al chocar con el lado derecho y se mueve hacia la izquierda.
      if (xVilNivel2 >= width - (100 + d2 / 2)) {
       velLoboXNivel2 *= -1;
       loboFrame = 2; // Cambia el frame del lobo
      } 

   // El lobo rebota al chocar con el lado izquierdo y se mueve hacia la derecha.
      if (xVilNivel2 <= (100 + d2 / 2)) {
       velLoboXNivel2 *= -1;
       loboFrame = 3;
      }
  
   // El lobo rebota al chocar con la parte superior e inferior.
      if (yVilNivel2 <= 150 + d2 / 2 ) {
       velLoboYNivel2 *= -1;
       loboFrame = 0;
      }
      if (yVilNivel2 >= height - (150 + d2 / 2)) {
       velLoboYNivel2 *= -1;
       loboFrame = 1;
      }
 
     //colision de personajes
      textSize(30);
      text("Vidas  " + vidas, 80, 60);
      if(dist(xPerNivel2, yPerNivel2, xVilNivel2, yVilNivel2) < d && colision == false){
        vidas -= 1;
        colision = true;
      }
      if(dist(xPerNivel2, yPerNivel2, xVilNivel2, yVilNivel2) > d){
        colision = false;
      }
    if(yPerNivel2 <= 60){
       pantalla = "siguienteN3";
      } 
  }
  
  if(pantalla === "siguienteN3"){
    image(sig, 400, 400);
    image( bot4, 230, 520, 200, 200); 
    image( bot5, 560, 510, 200, 200); 

    if(mouseIsPressed && dist(mouseX, mouseY, 230, 520) < 30){
      pantalla = "juegoNivel3";
    }
    if(mouseIsPressed && dist(mouseX, mouseY, 560, 510) < 30){
      resetGame();
    } 
  }
  
// Pantalla juegoNivel3
  if(pantalla === "juegoNivel3") {
     image( juego, 400, 400, 800, 800);

// Caperucita para nivel 3
    
    noFill();
    noStroke();
    ellipse(xPerNivel3, yPerNivel3, 60, d);
    image(jugadorSS, xPerNivel3, yPerNivel3, 57, 90, caperucitaFrame * 57, 0, 57, 90);
    if(keyIsDown(RIGHT_ARROW)){
      caperucitaFrame = 3;
    }else if (keyIsDown(LEFT_ARROW)){
      caperucitaFrame = 2;
    }else if (keyIsDown(UP_ARROW)){
      caperucitaFrame = 1;
    }else if (keyIsDown(DOWN_ARROW)){
      caperucitaFrame = 0;
    }
    
    // Los límites en los que el jugador puede moverse para nivel 3
    if (xPerNivel3 > width - (100 + d / 2)) {
      xPerNivel3 = width - (100 + d / 2);
    }
    if (xPerNivel3 < (100 + d / 2)) {
      xPerNivel3 = (100 + d / 2);
    }
    if (yPerNivel3 > height - d / 2) {
      yPerNivel3 = height - d / 2;
    }

    // El lobo para nivel 3
    ellipse(xVilNivel3, yVilNivel3, 60, d2);
    fill(0);
    image(loboSS, xVilNivel3, yVilNivel3, 80, 100, loboFrame * 57, 0, 57, 90);
    xVilNivel3 += velLoboXNivel3;
    yVilNivel3 += velLoboYNivel3;

    // El lobo rebota al chocar con el lado derecho y se mueve hacia la izquierda.
      if (xVilNivel3 >= width - (100 + d2 / 2)) {
       velLoboXNivel3 *= -1;
       loboFrame = 2; // Cambia el frame del lobo
      } 

   // El lobo rebota al chocar con el lado izquierdo y se mueve hacia la derecha.
      if (xVilNivel3 <= (100 + d2 / 2)) {
       velLoboXNivel3 *= -1;
       loboFrame = 3;
      }
  
   // El lobo rebota al chocar con la parte superior e inferior.
      if (yVilNivel3 <= 150 + d2 / 2 ) {
       velLoboYNivel3 *= -1;
       loboFrame = 0;
      }
      if (yVilNivel3 >= height - (150 + d2 / 2)) {
       velLoboYNivel3 *= -1;
       loboFrame = 1;
      }
    
     //colision de personajes
      textSize(30);
      text("Vidas  " + vidas, 80, 60);
      if(dist(xPerNivel3, yPerNivel3, xVilNivel3, yVilNivel3) < d && colision == false){
        vidas -= 1;
        colision = true;
      }
      if(dist(xPerNivel3, yPerNivel3, xVilNivel3, yVilNivel3) > d){
        colision = false;
      }
    if(yPerNivel3 <= 60){
       pantalla = "siguienteN4";
      } 
  }
  
    if(pantalla === "siguienteN4"){
    image(sig, 400, 400);
    image( bot4, 230, 520, 200, 200); 
    image( bot5, 560, 510, 200, 200); 

    if(mouseIsPressed && dist(mouseX, mouseY, 230, 520) < 30){
      pantalla = "juegoNivel4";
    }
    if(mouseIsPressed && dist(mouseX, mouseY, 560, 510) < 30){
      resetGame();
    } 
  }
  
// Pantalla juegoNivel4
  if (pantalla === "juegoNivel4") {
    image( juego, 400, 400, 800, 800);

// Caperucita para nivel 4
    noFill();
    noStroke();
    ellipse(xPerNivel4, yPerNivel4, 60, d);
    image(jugadorSS, xPerNivel4, yPerNivel4, 57, 90, caperucitaFrame * 57, 0, 57, 90);

    // Los límites en los que el jugador puede moverse para nivel 3
    if (xPerNivel4 > width - (100 + d / 2)) {
      xPerNivel4 = width - (100 + d / 2);
    }
    if (xPerNivel4 < (100 + d / 2)) {
      xPerNivel4 = (100 + d / 2);
    }
    if (yPerNivel4 > height - d / 2) {
      yPerNivel4 = height - d / 2;
    }

    // El lobo para nivel 4
    ellipse(xVilNivel4, yVilNivel4, 60, d2);
    fill(0);
    image(loboSS, xVilNivel4, yVilNivel4, 80, 100, loboFrame * 57, 0, 57, 90);
    xVilNivel4 += velLoboXNivel4;
    yVilNivel4 += velLoboYNivel4;

    // El lobo rebota al chocar con el lado derecho y se mueve hacia la izquierda.
      if (xVilNivel4 >= width - (100 + d2 / 2)) {
       velLoboXNivel4 *= -1;
       loboFrame = 2; // Cambia el frame del lobo
      } 

   // El lobo rebota al chocar con el lado izquierdo y se mueve hacia la derecha.
      if (xVilNivel4 <= (100 + d2 / 2)) {
       velLoboXNivel4 *= -1;
       loboFrame = 3;
      }
  
   // El lobo rebota al chocar con la parte superior e inferior.
      if (yVilNivel4 <= 150 + d2 / 2 ) {
       velLoboYNivel4 *= -1;
       loboFrame = 0;
      }
      if (yVilNivel4 >= height - (150 + d2 / 2)) {
       velLoboYNivel4 *= -1;
       loboFrame = 1;
      }
    
    // Verificar si el lobo está cerca de los bordes antes de cambiar la dirección
    if(xVilNivel4 >= width - (150 + d2 / 2) || xVilNivel4 <= (150 + d2 / 2)) {
      velLoboXNivel4 *= -1; // Cambia la dirección horizontal si está cerca de los bordes
    }

    if(yVilNivel4 <= 200 + d2 / 2 || yVilNivel4 >= height - (200 + d2 / 2)) {
      velLoboYNivel4 *= -1; // Cambia la dirección vertical si está cerca de los bordes
    }    
     //colision de personajes
      textSize(30);
      text("Vidas  " + vidas, 80, 60);
      if(dist(xPerNivel4, yPerNivel4, xVilNivel4, yVilNivel4) < d && colision == false){
        vidas -= 1;
        colision = true;
      }
      if(dist(xPerNivel4, yPerNivel4, xVilNivel4, yVilNivel4) > d){
        colision = false;
      }
    
      if(yPerNivel4 <= 200){
        pantalla = "ganaste";
      } 
  }
    
//perdiste
    if(pantalla === "perdiste"){
      background(200, 100, 200);
      image( perdiste, 400, 400, 800, 800);
      tint(170);
      image( bot5, 400, 550, 200, 200); 
      noTint(200);
      if(mouseIsPressed && mouseX > 310 && mouseX < 490 && mouseY > 520 && mouseY < 580){
        resetGame(); 
      }
    }
//ganaste
    if(pantalla === "ganaste"){
      background(100, 100, 200);
      image(ganaste, 400, 400, 800, 800);
      tint(170);
      image( bot5, 410, 600, 200, 200); 
      noTint(200);
      if(mouseIsPressed && dist(mouseX, mouseY, 410, 600) < 30){
        resetGame();
      }
    }

//pantalla reglas
    if(pantalla === "reglas"){
      image(reglas, 400, 400, 800, 800);
      image(bot5, 400, 640, 200, 200);
      if(mouseIsPressed && dist(mouseX, mouseY, 400, 640) < 30){
        pantalla = "inicio";
      }
    }
//pantalla creditos
    if(pantalla === "creditos"){
      image(creditos, 400, 400, 800, 800);
      image(bot3, 412, 550, 200, 200);
      if(mouseIsPressed && dist(mouseX, mouseY, 415, 550) < 30){
        pantalla = "inicio";
      }
    }  
}
  
  
