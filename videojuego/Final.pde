class Ganador{
float tama;
float x, y, x2, y2;
float r,g,b;
float dx;
float a=0;

Ganador(){
 tama = 400;
 x = width/2+50;
 y = height/2;
 x2 =width/2+50;
 y2= height/4;
 r =205;
 g =164;
 b =52;
}
larryF lar;
TomF to;
LizyF liz;
EvaF ev;
JackF jajack;


void display(){ 
 lar = new larryF(1.5,-10,-20,0);
 to = new TomF(1.5,-30,-20,0);
 liz = new LizyF(1.5,-30,-20,0);
 ev = new EvaF(1.5,-30,-20,0);
 jajack = new JackF(1.5,-30,-20,0);
  fill(r,g,b);
  ellipseMode(CORNER);
 ellipse(-300,-100,tama*2, tama*2); 
  fill(0,0,0);
  textSize(80);
 text("Eres el Ganador",(width*2)/4,555);
 fill(r,g,b);
 textSize(80);
 text("Eres el Ganador",(width*2)/4,550);

 if(Ganador == 1){
   fill(0,0,0);
   textSize(100);
  text("Larry",(width*2)/4,height/6-5);
   fill(r,g,b);
   textSize(100);
  text("Larry",(width*2)/4,height/6); 
   lar.display();
 }
  if(Ganador == 2){
   fill(0,0,0);
   textSize(100);
  text("Tom",(width*2)/4,height/6-5); 
  fill(r, g, b);
   textSize(100);
  text("Tom",(width*2)/4,height/6); 
   to.display();
 }
 if(Ganador == 3){
   fill(0,0,0);
   textSize(100);
  text("Lizy",(width*2)/4,height/6-5); 
   fill(r,g,b);
   textSize(100);
  text("Lizy",(width*2)/4,height/6); 
   liz.display();
 }
  if(Ganador == 4){
    fill(0,0,0);
    textSize(100);
    text("Eva",(width*2)/4,height/6-5); 
    fill(r,g,b);
   textSize(100);
  text("Eva",(width*2)/4,height/6); 
   ev.display();
 }
  if(Ganador == 5){
    fill(0,0,0);
    textSize(100);
    text("Jack",(width*2)/4,height/6-5); 
    fill(r,g,b);
   textSize(100);
  text("Jack",(width*2)/4,height/6); 
   jajack.display();
 }
  fill(r , g, b);
  rect(x, y, tama*7, tama, 20, 20, 20, 20);
  fill(0);
  textSize(40);
  text("Inicio (Presiona o)", x+(tama/6),y+((tama*3)/4));
  
  
  fill(r , g, b);
  rect(x2, y2, tama*5, tama, 20, 20, 20, 20);
  fill(0);
  textSize(40);
  text("Salir", x2+(tama/6),y2+((tama*3)/4));
}
 
 void mover(){
  if((mouseX>=x)&&(mouseX<=x+(tama*5))&&(mouseY>=y)&&(mouseY<=y+(tama)))
  {
  tama = 75;   
  }
  else{
  tama = 70; 
  }
     if (key == 'o'){
       Muerte = 1;
       Salir = 0;
       Turno = 0;
       Personaje = 0;
       Personaje1 = 0;
       Personaje2 = 0;
       Vida=400;
       Vida2=400;
       RPersonaje=187;
       GPersonaje=222;
       BPersonaje=251;
     }
 }
 
 
 
void salir(){
 if((mouseX>=x2)&&(mouseX<=x2+(tama*5))&&(mouseY>=y2)&&(mouseY<=y2+(tama)))
  {
  if (mousePressed){
   exit(); 
    }
   }
  }
}
