class MenuEntrar{
float tamano;
float x,y;
float r,g,b;
String Start;
float a;


MenuEntrar(){
 tamano = 70;
 x = width/8;
 y = (height*7)/16;
 r = 197;
 g = 202;
 b = 233;
 }
 
 void display(){
  fill(r , g, b);
  rect(x, y, tamano*7, tamano, 20, 20, 20, 20);
  fill(0);
  textSize(40);
  text("Inicio (Presiona SPACE)", x+(tamano/6),y+((tamano*3)/4));
 }
 
 void mover(){
   if (key == ' '){
   a = 1;
     tamano = 75;   
       }
 if( a==1){
       Muerte += 1; 
     }
}


}


class MenuSalir{
float tamano;
float x,y;
float r,g,b;
String Start;


MenuSalir(){
 tamano = 70;
 x = width/8;
 y = (height*12)/16;
 r = 197;
 g = 202;
 b = 233;
 }
 
 void display(){
  fill(r , g, b);
  rect(x, y, tamano*5, tamano, 20, 20, 20, 20);
  fill(0);
  textSize(40);
  text("Salir", x+(tamano/6),y+((tamano*3)/4));
 }
 
 void mover(){
  if((mouseX>=x)&&(mouseX<=x+(tamano*5))&&(mouseY>=y)&&(mouseY<=y+(tamano)))
  {
  tamano = 75;   
  }
  else{
  tamano = 70; 
  } 
 }
 
void keyPressed(){
 if((mouseX>=x)&&(mouseX<=x+(tamano*5))&&(mouseY>=y)&&(mouseY<=y+(tamano)))
  {
  if (mousePressed){
   exit(); 
    }
   }
  }
  
  
}
