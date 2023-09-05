

function boton(botX, botY, botAn, botAl, textoBot, r, g, b, textT) {
  rectMode(CENTER);
  fill(r, g, b);
  rect(botX, botY, botAn, botAl);
  textSize(18);
  fill(0);
  textSize(textT);
  textAlign(CENTER);
  text(textoBot, botX, botY);
}

function boton1(botX, botY, botAn, botAl, textoBot, textT) {
  rectMode(CENTER);
   noFill();
   noStroke();
  rect(botX, botY, botAn, botAl);
  textSize(18);
  fill(0);
  textSize(textT);
  textAlign(CENTER);
  text(textoBot, botX, botY);
}

function personaje() {
  let posX = width / 2;
  let margen = 2; 
  let anchoDelPersonaje = 61; 

// Limita la posición horizontal del personaje dentro de los márgenes
  posX = constrain(mouseX, margen, width - margen - anchoDelPersonaje);

  let posY = 250;
  image(perso, posX, posY);
}

function preload(){
    img1 = loadImage('data/i0.jpg'); 
  img2 = loadImage('data/i1.jpg');  
  img3 = loadImage('data/i2.jpg');  
  reglasOF = loadImage('data/reglasOF.jpg');  
  img7 = loadImage('data/i6.jpg');  
  img8 = loadImage('data/i7.jpg');  
  img9 = loadImage('data/i8.jpg'); 
  perso = loadImage('data/perso.jpg'); 
}
