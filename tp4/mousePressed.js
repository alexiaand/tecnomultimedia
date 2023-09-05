



function mousePressed() {
  
  
  
// Cambia la pantalla a juego en cualquier momento si se presiona Comenzar
if(pantalla === "inicio"){ 

 let distancia2 = dist(width/2, 280, mouseX, mouseY);
 let distancia3 = dist(width/2, 320, mouseX, mouseY);
 
 if (distancia2 < 70 / 2 && distancia2 < 40 / 2) { 
   pantalla = "instrucciones";
 }
 if (mouseX >= width / 2 - 35 && mouseX <= width / 2 + 35 && mouseY >= 300 && mouseY <= 340) {
  pantalla = "créditos";
 }
 } 
 


  // pantalla créditos
  if (pantalla === "créditos") {
    let distancia3 = dist(width / 2, 300, mouseX, mouseY);
    if (distancia3 < 70 / 2 && distancia3 < 40 / 2) {
      pantalla = "inicio";
    }
  }

  // pantalla juegoTerminado
  if (pantalla === "ganaste") {
    let distancia4 = dist(width / 2, 270, mouseX, mouseY);
    if (distancia4 < 70 / 2 && distancia4 < 40 / 2) {
      pantalla = "inicio";
    }
  }

  // pantalla perdedor
  if (pantalla === "perdiste") {
    let distancia5 = dist(width / 2, 280, mouseX, mouseY);
    if (distancia5 < 70 / 2 && distancia5 < 40 / 2) {
      pantalla = "inicio";
    }
  }

  // pantalla instrucciones
  if (pantalla === "instrucciones") {
    let distancia6 = dist(height / 2, 350, mouseX, mouseY);
    let apretar = dist(300, 200, mouseX, mouseY);
    if (distancia6 < 70 / 2 && distancia6 < 40 / 2) {
      pantalla = "inicio";
    }
}
}
