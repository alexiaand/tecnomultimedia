
function pantallaInicio() {
  image(img1, 0, 0);
    boton1(width / 2, 320, 70, 40);

  // Reiniciar posiciones de obstáculos al comenzar un nuevo juego
  if (mouseIsPressed && dist(width / 2, 220, mouseX, mouseY) < 70 / 2 && dist(width / 2, 220, mouseX, mouseY) < 40 / 2) {
    for (let i = 0; i < 5; i++) {
      rectX[i] = random(width);
      rectY[i] = random(-200, -50);
    }
    tiempo = 0;
    vidas = 3;
    velYJ = 1;
    pantalla = "juego";
  }
}

function pantallaJuego() {
  image(img2, 0, 0);
  personaje();
}


  
