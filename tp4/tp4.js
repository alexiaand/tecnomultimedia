//Alexia Anduaga, tp4, legajo ---> 94020/9
//video: https://youtu.be/e_h3-6sqeX0 

let pantalla = "inicio";
let velYJ = 1;
let tiempo = 0;
let rectX = [], rectY = [];
let vidas = 3;
let r = 25;
let img1, img2, img3, img4, img5, img6, img7, img8, img9, perso, reglasOF;

function setup() {
  createCanvas(400, 400); 
}

function draw() {
  
  
// pantallas

// pantalla inicio
  if (pantalla === "inicio") {
    pantallaInicio();
  }

// pantalla créditos
  if (pantalla === "créditos") {
    image(img3, 0, 0);  
  }

// pantalla instrucciones
  if (pantalla === "instrucciones") {
    image(reglasOF, 0, 0);
  }

// pantalla juego
  if (pantalla === "juego") {
    pantallaJuego();
    // dibujar contador de tiempo o puntaje en pantalla
    push();
    tiempo += 1;
    fill(0);
    textSize(20);
    text(" " + tiempo, 105, 25);
    pop();

    // dibujar vidas en pantalla
    push();
    fill(0);
    textSize(20);
    text("" + vidas, 85, 45);
    pop();

    // objetos cayendo
    for (let i = 0; i < 5; i++) {
      let rectAn = 30;
      let rectAl = 20;
      fill(234, 137, 154);
      rect(rectX[i], rectY[i], rectAn, rectAl);
      rectY[i] += velYJ;

      if (rectY[i] > height) {
        rectY[i] = random(-200, -50);
        rectX[i] = random(width);
      }

      // velocidad en aumento
      if (tiempo % 1000 === 0) {
        velYJ += 0.05;
      }

      if (tiempo === 10000) {
        pantalla = "ganaste";
      }

      // Detección de colisión con el personaje
      let distanciaX = abs(rectX[i] + rectAn / 2 - (mouseX + 61 / 2));
      let distanciaY = abs(rectY[i] + rectAl / 2 - (250 + 102 / 2));
      let margen = 2;
      if (distanciaX < (61 / 2 + rectAn / 2) && distanciaY < (102 / 2 + rectAl / 2)) {
        vidas -= 1;
        rectY[i] = random(-200, -50);
        rectX[i] = random(margen, width - margen - rectAn);
      }
      if (vidas === 0) {
        pantalla = "perdiste";
      }
    }
  }

  // pantalla ganador
  if (pantalla === "ganaste") {
    image(img8, 0, 0);
  }

  // pantalla perdedor
  if (pantalla === "perdiste") {
 image(img9, 0, 0);
  }
}
