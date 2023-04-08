//dibujo de cerdito

PImage cerdito;

void setup(){
  
  size( 800, 400 );
  
  cerdito = loadImage("cerdito.jpg");
 
}

void draw(){
  
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);
  
  background( 146, 197, 252 );
  
  //fondo
  
  //pasto
  
  fill ( 79, 118, 63 );
  ellipse (186, 344, 1500, 280 );
  
  fill ( 77, 49, 39 );
  rect ( 0, 149, 1000, 10 );
  rect ( 0, 96, 1000, 10 );
  
  image( cerdito, 400, 0 );
  
  
  //cuerpo 
  
  fill ( 240, 175, 185 );
  noStroke();
  ellipse ( 174, 207, 200, 80 );
  stroke ( 5, 50); 
  bezier ( 182, 168, 216, 151, 271, 168, 273, 203 );
  bezier ( 63, 216, 60, 256, 91, 259, 149, 246 );
  noStroke();
  
  //cola
  
  stroke ( 5, 50 );
  bezier ( 248, 170, 242, 135, 268, 163, 260, 180 );
  bezier ( 248, 170, 254, 175, 254, 175, 260, 180 );
  
  //patas
  
  //pata delantera izquierda
  
  noStroke();
  bezier ( 65, 236, 68, 310, 89, 310, 89, 240 );
  ellipse ( 77, 280, 20, 50 );
  stroke ( 222, 115, 130 );  
  line ( 68, 296, 84, 296 ); 
  noFill();
  stroke ( 5, 50);
  bezier ( 65, 237, 72, 246, 88, 256, 125, 250 );
  fill ( 222, 115, 130 );
  noStroke();
  bezier ( 68, 291, 62, 314, 71, 314, 78, 298 );
  bezier ( 76, 296, 70, 314, 84, 316, 86, 291 );
  ellipse ( 76, 296, 17, 10);
  fill ( 28, 13, 2, 70 );
  ellipse ( 75, 273, 15, 10 );
 
  //pata delantera derecha
  
  
  noFill();
  stroke ( 5, 50 );
  bezier ( 101, 234, 101, 249, 100, 252, 116, 253 );
  noStroke();
  fill ( 240, 175, 185 );
  ellipse ( 113, 268, 20, 60 );
  bezier ( 105, 248, 107, 283, 116, 288, 125, 249 );
  ellipse ( 111, 285, 20, 40 );
  stroke ( 5 );
  stroke ( 222, 115, 130 );
  line ( 101, 296, 119, 296 );
  fill ( 222, 115, 130 );
  bezier ( 100, 296, 100, 318, 106, 311, 110, 297 );
  bezier ( 110, 297, 108, 318, 114, 308, 119, 297 );
  ellipse ( 110, 294, 19, 7 );
  fill ( 28, 13, 2, 70 );
  noStroke();
  ellipse ( 110, 273, 15, 10 );
  
  //pata trasera derecha
  
  fill ( 240, 175, 185 );
  bezier ( 244, 234, 247, 270, 275, 270, 274, 203 );
  ellipse ( 257, 268, 23, 51 );
  fill ( 222, 115, 130 );
  bezier ( 249, 288, 240, 320, 257, 305, 257, 289 );
  bezier ( 257, 289, 252, 320, 268, 305, 265, 289 );
  ellipse ( 256, 291, 19, 13 );

  
  //pata trasera izquierda
  
  fill ( 240, 175, 185 );
  noStroke();
  bezier ( 206, 240, 227, 270, 250, 270, 245, 231 );
  bezier (221, 255, 216, 298, 237, 298, 243, 254 );
  
  fill ( 222, 115, 130 );
  bezier ( 221, 281, 210, 310, 223, 310, 228, 284 ); 
  bezier ( 228, 284, 221, 309, 233, 309, 236, 280 );
  ellipse (228, 285, 17, 13 );
  
  noFill();
  stroke ( 10, 75 );
  bezier ( 233, 223, 233, 240, 239, 240, 247, 245 );
  bezier ( 149, 246, 184, 252, 176, 241, 243, 244 );
  
  //cara

  stroke ( 10, 40 );
  fill ( 240, 175, 185 );
  bezier ( 54, 188, 40, 125, 139, 125, 126, 188 );
  bezier ( 54, 188, 63, 235, 110, 252, 126, 188 );
  
  //cachetes
  
  bezier ( 52, 172, 50, 204, 50, 204, 74, 225 );
  bezier ( 126, 173, 130, 203, 130, 203, 106, 225 );
  
  //trompa
  
  stroke( 10, 90 );
  fill ( 222, 115, 130 );
  bezier ( 75, 212, 81, 218, 89, 218, 93, 212 );
  ellipse ( 84, 208, 30, 12 );
  bezier ( 70, 206, 80, 191, 88, 191, 99, 206 );
  fill ( 149, 41, 47 );
  ellipse ( 79, 203, 4, 6 ); 
  ellipse ( 89, 203, 4, 6);
  fill ( 240, 175, 185 );
 
  bezier ( 75, 193, 83, 187, 87, 187, 95, 193);
  bezier ( 80, 186, 87, 183, 87, 183, 94, 186);
  bezier ( 99, 209, 103, 198, 102, 198, 102, 192 );
  stroke ( 10, 100 );
  
  //orejas
  
  fill ( 240, 175, 185 );
  
  //oreja izquierda
  
  noStroke();
  triangle ( 38, 133, 73, 145, 60, 190 );
  stroke ( 10, 90 );
  bezier ( 38, 133, 34, 170, 34, 170, 54, 173 );
  bezier ( 60, 160, 57, 133, 57, 135, 38, 133 );
  fill ( 222, 115, 130 );
  bezier ( 58, 162, 51, 142, 55, 147, 42, 139 );
  bezier ( 42, 139, 43, 155, 47, 164, 58, 162 );

  //oreja derecha
  
  fill ( 240, 175, 185 );
  noStroke();
  triangle ( 146, 133, 107, 145, 120, 190 );
  stroke ( 10, 90 );
  bezier ( 146, 133, 148, 170, 148, 170, 126, 173 );
  bezier ( 121, 161, 128, 135, 128, 135, 146, 133 );
  fill ( 222, 115, 130 );
  bezier ( 123, 162, 132, 143, 132, 143, 141, 139 ); 
  bezier ( 123, 162, 139, 160, 139, 152, 141, 139 );
  
  //ojos
  
  fill ( 46, 26, 6 );
  ellipse ( 69, 171, 10, 12 ); 
  ellipse ( 111, 171, 10, 12 );
  fill ( 255 );
  ellipse( 71, 167, 2, 2 );
  ellipse ( 68, 171, 5, 5 );
  ellipse ( 112, 167, 2, 2 );
  ellipse (111, 171, 5, 5 );
  
  fill ( 240, 175, 185 );
  bezier ( 73, 164, 77, 165, 77, 169, 77, 175 );
  bezier ( 107, 164, 103, 165, 103, 170, 103, 175 );
  
  
}

  
