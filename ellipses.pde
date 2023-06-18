
color colorEllipses = color ( 216, 216, 50 );
float map1;


void ellipsesQueNoRotan(){ 

  
fill(colorEllipses);

for (int y = 2; y < 450; y+=50) { 
  stroke(0);
  ellipse(600, y, 27, 23);
  stroke( 255);
   arc( 600, y, 28, 18, radians(0), radians(180));
  }
 
 for (int x = 438; x < 800; x+=320){
  for (int y = 30; y < 450; y+=50) {
    stroke(0);
    ellipse(x, y, 28, 18);
    fill(colorEllipses);
    stroke( 255);
    arc( x, y, 28, 18, radians(0), radians(180));

  }
 }

 for (int y = 18; y < height; y+=50){ 
   for (int x = 519; x < width; x+=160){
    stroke(0);
    ellipse(x, y, 20, 34);
    fill(colorEllipses);
    stroke( 255);
    arc( x, y, 20, 34, radians(0), radians(180));
   
   }
 } 
 
}

void mousePressed(){


  if( dist(botX, botY, mouseX, mouseY) < 50/2 ){
      colorEllipses = color ( 216, 216, 50 );
    } 
   
}
