boolean colorearEllipses = false; 
int tam;

void ellipsesQueRotan(){

 int r2 = int(map(mouseX, 0, width, 134, 208));
 int g2 = int(map(mouseY, 0, height, 160, 25));
 int b2 = int(map(mouseX + mouseY, 0, width + height, 19, 50));

tam = 18;
 
strokeWeight( 2); 

   for (int y = 5; y < 450; y += 50) {
     if (colorearEllipses){
   fill(r2, g2, b2);
   }else{
    fill( 216, 216, 50 );
   }
    pushMatrix(); 
    translate(491, y);
    rotate(radians(60)); 
    stroke(0);
    ellipse(0, 0, 28, tam);
    stroke( 255);
    arc( 0, 0, 28, 18, radians(0), radians(180));
    popMatrix(); 
  }     

   
  for (int y = 0; y < 450; y += 50) {
     if (colorearEllipses){
   fill(r2, g2, b2);
   }else{
    fill( 216, 216, 50 );
   }
    pushMatrix(); 
    translate(467, y);
    rotate(radians(40)); 
    stroke(0);
    ellipse(0, 0, 27, tam);
    stroke( 255);
    arc( 0, 0, 28, 18, radians(0), radians(180));
    popMatrix(); 
  }
   
   for (int y = 0; y < 450; y += 50) {
    if (colorearEllipses){
     fill(r2, g2, b2);
      }else{
       fill( 216, 216, 50 );
      }
    pushMatrix(); 
    translate(408, y);
    rotate(radians(860)); 
    stroke(0);
    ellipse(0, 0, 27, tam);
    stroke( 255);
    arc( 0, 0, 28, 18, radians(0), radians(180));
    popMatrix(); 
  }
 
   
   for (int y = 27; y < 450; y += 50) {
   if (colorearEllipses){
     fill(r2, g2, b2);
      }else{
       fill( 216, 216, 50 );
      }
    pushMatrix(); 
    translate(545, y);
    rotate(radians(120));
    stroke(0);
    ellipse(0, 0, 30, tam);
    stroke( 255);
    arc( 0, 0, 28, 18, radians(0), radians(180));
    popMatrix();
   }
   
  for (int y = -5; y < 450; y += 50) {
    if (colorearEllipses){
     fill(r2, g2, b2);
      }else{
       fill( 216, 216, 50 );
      }
    pushMatrix(); 
    translate(571, y);
    rotate(radians(120));
    stroke(0);
    ellipse( 0, 0, 29, tam);
    stroke( 255);
    arc( 0, 0, 28, 18, radians(0), radians(180));
    popMatrix();
  }
  
  for (int y = -5; y < 450; y += 50) {
    if (colorearEllipses){
     fill(r2, g2, b2);
      }else{
       fill( 216, 216, 50 );
      }
    pushMatrix(); 
    translate(630, y);
    rotate(radians(55));
    stroke(0);
    ellipse( 0, 0, 29, tam);
    stroke( 255);
    arc( 0, 0, 28, 18, radians(0), radians(180));
    popMatrix();
  }
  
  for (int y = 23; y < 450; y += 50) {
    if (colorearEllipses){
     fill(r2, g2, b2);
      }else{
       fill( 216, 216, 50 );
      }
    pushMatrix(); 
    translate(652, y);
    rotate(radians(55));
    stroke(0);
    ellipse( 0, 0, 30, tam);
    stroke( 255);
    arc( 0, 0, 28, 18, radians(0), radians(180));
    popMatrix();
  }
  for (int y = 7; y < 450; y += 50) {
    if (colorearEllipses){
     fill(r2, g2, b2);
      }else{
       fill( 216, 216, 50 );
      }
    pushMatrix(); 
    translate(704, y);
    rotate(radians(825));
    stroke(0);
    ellipse( 0, 0, 30, tam);
    stroke( 255);
    arc( 0, 0, 28, 18, radians(0), radians(180));
    popMatrix();
  }
  for (int y = -5; y < 450; y += 50) {
    if (colorearEllipses){
     fill(r2, g2, b2);
      }else{
       fill( 216, 216, 50 );
      }
    pushMatrix(); 
    translate(729, y);
    rotate(radians(840));
    stroke(0);
    ellipse( 0, 0, 30, tam);
    stroke( 255);
    arc( 0, 0, 28, 18, radians(0), radians(180));
    popMatrix();
  }
  for (int y = -3; y < 450; y += 50) {
    if (colorearEllipses){
     fill(r2, g2, b2);
      }else{
       fill( 216, 216, 50 );
      }
    pushMatrix(); 
    translate(792, y);
    rotate(radians(60));
    stroke(0);
    ellipse( 0, 0, 30, tam);
    stroke( 255);
    arc( 0, 0, 28, 18, radians(0), radians(180));
    popMatrix();
  }
}

void keyPressed() {
  if (key == ' ' || key == ' ') {
    colorearEllipses = !colorearEllipses; 
  
 } 
 
 if (key == 'c' || key == 'C'){
   
    colorEllipses = colorAleatorio();  
  } 
}
