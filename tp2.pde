
//video explicación:  https://youtu.be/c5BhXFACSDc 

PImage ilusionOp; 
float botX, botY, botT;

void setup(){
  size(800, 400);
  
  ilusionOp = loadImage("OpticaIlusion.jpg");
  
  botX = 399;
  
  botY = 293;
  
  botT= 50;
}

void draw(){
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);

  
  background(0, 75, 250);
  
  image(ilusionOp, 0, 0);
    
 ellipsesQueNoRotan();
 ellipsesQueRotan();
 
  fill(255);
  circle( botX, botY, botT );
 

 
}


 //video explicación:  https://youtu.be/c5BhXFACSDc 

 
