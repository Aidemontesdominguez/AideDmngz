class BarraDeVida{
  float tamano,tamanodos;
  float x, y;
  float r, g, b;
  boolean Dano;
  
 
  BarraDeVida (){
  tamano = width/3;
  x = width/16;
  y = 20;
  r = 237;
  g = 231;
  b = 246;
  }
  
  void display(){ 
    fill(r, g, b);
  rect(x, y, tamano, tamano/8);
  fill(255, 143, 0);
  rect(x, y, Vida, tamano/8);
  }
 
 void keyPressed(){
   if(Turno==1){
 if(key == 'l'){
   Vida -= random(10,50);
  }
   if(Vida<=0){
     Muerte = 4;
     Ganador = Personaje2;
   }
   }
 }  
}


class BarraDeVidaDos{
 float tamano;
 float x, y;
 float r,g,b;
 //float Vida;
 
 BarraDeVidaDos(){
  tamano = width/3;
  x = (width/2)+150;
  y = 20; 
  r = 237;
  g = 231;
  b = 246;
 // Vida = 1;
  }
  
  void display(){ 
   fill(r,g,b);
  rect(x, y, tamano, tamano/8);
    fill(255, 143, 0);
  rect(x, y, Vida2, tamano/8);

  }
  
  
 void keyPressed(){
   if(Turno==0){
  if(key == 'a'){
    Vida2 -= random(10,50);
   if(Vida2<=0){
     Muerte = 4;
     Ganador = Personaje1;
   }
 }
 }
 }
 
}
 
 
class LogoVS{
  float tamano;
  float x, y;
  
 LogoVS(){
  tamano = 200;
  x = (width/2)-(tamano/2);
  y = 5; 
 }
 
 void display(){
   fill(183, 28, 28);
   ellipseMode(CORNER);
   ellipse(x,y,tamano, tamano);  
   fill(205,164,52);
   textSize(200);
   text("VS",480,180);
   
   
   fill(0,0,0);
   textSize(70);
   text("P",50,185);
   text("r",50,235);
   text("e",50,285);
   text("c",50,335);
   text("i",50,385);
   text("o",50,435);
   text("n",50,485);
   text("a",50,535);
   textSize(100);
   text("A", 120,155);
   
   fill(205,164,52);
   textSize(70);
   text("P",50,180);
   text("r",50,230);
   text("e",50,280);
   text("c",50,330);
   text("i",50,380);
   text("o",50,430);
   text("n",50,480);
   text("a",50,530);
   textSize(100);
   text("A", 120,150);
   
   fill(0,0,0);
   textSize(70);
   text("P",1100,185);
   text("r",1100,235);
   text("e",1100,285);
   text("c",1100,335);
   text("i",1100,385);
   text("o",1100,435);
   text("n",1100,485);
   text("a",1100,535);
   textSize(100);
   text("L", 1000,155);
   
   fill(205,164,52);
   textSize(70);
   text("P",1100,180);
   text("r",1100,230);
   text("e",1100,280);
   text("c",1100,330);
   text("i",1100,380);
   text("o",1100,430);
   text("n",1100,480);
   text("a",1100,530);
   textSize(100);
   text("L", 1000,150);
 } 
}




class TurnoJugador{
 float tamano;
 float x, y;
 float r,g,b;
 float t;
 float dano;
 
 TurnoJugador(float x_,float y_, float t_){
   x = x_;
   y = y_;
   tamano = width/2;
   r = 0;
   g = 0;
   t = t_;
   b = 0;
   dano = 10;
 }
 
 
 void display(){
 fill(r,g,b);
 rect(x, y, tamano, height);  
 if(Turno==t){
   r = 198;
   g = 40;
   b = 40;
 }
 else{
   r = 255;
   g = 138;
   b = 128; 
 }
 }
 
 void turnos(){
   
  if (Turno==0){
  if (key=='a'){
    Turno=1;
  }
    }

  if (Turno==1){
    if(key=='l'){
      Turno=0;
  }
   
  println(Turno);  
  
 }

}
}

class AtaqueNormal{
  float tamano;
  float x;
  float y;
  float dx;
  float tamanop;
  float disx;
  float x2, y2;
  AtaqueNormal(){
   tamano = 50;
     x = width/20;
     y = height/7;
    dx = 4;
    tamanop = 70;
    disx = (width)/8;
    x2 = width;
    y2 = (height*9)/8;
  }
  
  void display(){
       if(Turno==0){
fill(RPersonaje,GPersonaje,BPersonaje);
   pushMatrix();
   translate(x,y);
   rect(disx,(height/2)-(tamanop/2),tamanop*2,tamanop);
   rect(disx+(tamanop*2),(height/2)-((tamanop*3)/2),tamanop*2.5,tamanop*3,20);
   rect(disx+(tamanop*2)+((tamanop*2.5)/2),(height/2)-((tamanop*3)/2),tamanop+(tamanop/2),(tamanop*3)/4,20);
   rect(disx+(tamanop*2)+((tamanop*2.5)/2),(height/2)-((tamanop*3)/2)+((tamanop*3)/4),tamanop+(tamanop/2),(tamanop*3)/4,20);
   rect(disx+(tamanop*2)+((tamanop*2.5)/2),(height/2)-((tamanop*3)/2)+(((tamanop*3)/4)*2),tamanop+(tamanop/2),(tamanop*3)/4,20);
   rect(disx+(tamanop*2)+((tamanop*2.5)/2),(height/2)-((tamanop*3)/2)+(((tamanop*3)/4)*3),tamanop+(tamanop/2),(tamanop*3)/4,20);
   rect(disx+(tamanop*2)+20,(height/2)-((tamanop*3)/2),tamanop+(tamanop/2),tamanop,0,0,0,20);
   rect(disx+(tamanop*2)+20+tamanop,(height/2)-((tamanop*3)/2),tamanop,tamanop+(tamanop/2),0,0,20,20);
   popMatrix();
   }
   else{
fill(RPersonajeD,GPersonajeD,BPersonaje);
   pushMatrix();
   translate(x2,y2);
   rotate(PI);
   rect(disx,(height/2)-(tamanop/2),tamanop*2,tamanop);
   rect(disx+(tamanop*2),(height/2)-((tamanop*3)/2),tamanop*2.5,tamanop*3,20);
   rect(disx+(tamanop*2)+((tamanop*2.5)/2),(height/2)-((tamanop*3)/2),tamanop+(tamanop/2),(tamanop*3)/4,20);
   rect(disx+(tamanop*2)+((tamanop*2.5)/2),(height/2)-((tamanop*3)/2)+((tamanop*3)/4),tamanop+(tamanop/2),(tamanop*3)/4,20);
   rect(disx+(tamanop*2)+((tamanop*2.5)/2),(height/2)-((tamanop*3)/2)+(((tamanop*3)/4)*2),tamanop+(tamanop/2),(tamanop*3)/4,20);
   rect(disx+(tamanop*2)+((tamanop*2.5)/2),(height/2)-((tamanop*3)/2)+(((tamanop*3)/4)*3),tamanop+(tamanop/2),(tamanop*3)/4,20);
   rect(disx+(tamanop*2)+20,(height/2)-((tamanop*3)/2),tamanop+(tamanop/2),tamanop,0,0,0,20);
   rect(disx+(tamanop*2)+20+tamanop,(height/2)-((tamanop*3)/2),tamanop,tamanop+(tamanop/2),0,0,20,20);
   popMatrix();
   }
  }
  

  void mover (){
      if (Turno==0)
      {
        if(key == 'a'){
       for(int i=0; i>=10; i++){
       x += dx;
       }
        }
      }
     if(Turno==1)
     {
          if(key == 'l'){
       for(int i=0; i>=10; i++){
       x2 -= dx;
       }
     
        } 
      }
    }
  
  
}
