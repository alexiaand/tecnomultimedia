//Alexia Anduaga 94020/9
//Video explicaci+on -------> https://youtu.be/BtNMOdjqEZc




let juego;


function preload(){
  
  instrucciones = loadImage('data/instrucciones.jpg');
  jugando = loadImage('data/jugando.jpg');
  ganaste = loadImage('data/ganaste.jpg');
  perdiste = loadImage('data/perdiste.jpg');
  c = loadImage('data/c.png');
  h = loadImage('data/h.png');
  conjuro = loadImage('data/conjuro.png');
  maleficio = loadImage('data/maleficio.png');
}


function setup() {
  
  createCanvas(600, 600);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  
  juego = new Juego();

}


function draw() {
  
  background(220);
  
  juego.actualizar();
  juego.dibujar();
}

function keyPressed(){
  juego.moverC(keyCode);
  juego.cambioP(keyCode);
}
