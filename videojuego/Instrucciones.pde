class Instrucciones{
float tamano;
float x,y;
float r,g,b;

Instrucciones(){
tamano = 200;
x = 0;
y = height/4;
r=255;
g=241;
b=118;  
}
 
  
  void display(){
    fill(r,g,b);
   rect (x,y,tamano*6,tamano*2);
   fill(0);
   textSize(40);
   text("    La modalidad del juego se basa en una partida por turnos",0,200);
   text("              El Jugador 1 atacará con la tecla A",0,270);
   text("              El jugador 2 atacará con la tecla L",0,320);
   text("    La cantidad de daño de los ataques es totalmente aleatoria",0,390);
   
   textSize(20);
   text("                                                                                        Presiona X para continuar",0,500);
    
    
  }
  
  
 void mover(){
   if (key == 'x'){
    Muerte+=1; 
   }
 }
  
  
  
  
  
  
}
