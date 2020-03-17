import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;

float radio = 150;
PImage chica;
PImage titulo;
Box2DProcessing mundo;
ArrayList<limite> limites;
ArrayList<objeto>objetos;
atractor iman;
ArrayList<cabello>cabellos;
int cambio = 1;


void setup(){
 size(800,600);
 smooth();
 chica = loadImage("Chica.png");
 titulo = loadImage("ophelia.png");
 chica.resize(800,600);
 titulo.resize(800,600);
 
mundo = new Box2DProcessing(this);  
mundo.createWorld();
mundo.setGravity(-0.5,-0.4);
limites = new ArrayList<limite>();
  limites.add(new limite(width/2,0,width,20));
  limites.add(new limite(0,height/2,20,height));
  limites.add(new limite(width,height/2,20,height));
  limites.add(new limite (width/2,height,width,20));
  
  
cabellos = new ArrayList<cabello>();
cabellos.add(new cabello(20,35,width/8,height/2,width/2-radio-30,height/2,150,200));
cabellos.add(new cabello(20,35,width/2,10,width/2,height/2-radio-20,width/2,200));
cabellos.add(new cabello(20,35,width-130,height/2-150,width/2+radio+30,height/2,width/2+radio,height/2));
cabellos.add(new cabello(20,35,100,100,width/2-radio,height/2-100,150,200));
cabellos.add(new cabello(20,35,width/2+radio+100,height/2-250,width/2+radio,height/2-100,150,200));
cabellos.add(new cabello(20,35,125,70,width/2-radio+50,height/2-150,150,200));
cabellos.add(new cabello(20,35,270,30,width/2-radio+70,height/2-170,150,200));
cabellos.add(new cabello(20,35,570,30,width/2+radio-70,height/2-170,150,200));
objetos = new ArrayList<objeto>();
iman = new atractor(width/2,height/2,radio,true);
}


void draw(){
 background(23, 32, 42); 
  mundo.step();
  switch(cambio){
    case 1:{
image(titulo,0,0);
 fill(0);
textSize(20);
text("Click ENTER para continuar",15,520);
text("Click SPACE para salir",15,550);
if(keyPressed){
  if(key == ENTER){
    cambio = 2;}
      }
   if(key == ' '){
     exit();
   }
    }
   break;
   
   
   case 2:{

image(chica,0,0);
 //iman.display();
     
  for(limite l:limites){
    l.display(); 
  }
  
  if(mousePressed){
    objeto o = new objeto(mouseX, mouseY,255, 235, 59, true);
    objetos.add(o);
    
  }
  
  for(objeto b:objetos){
    Vec2 Fuerza = iman.atraccion(b);
    b.applyForce(Fuerza);
    b.display();
  }
  
  for(cabello c:cabellos){
    c.display();
    
  }

fill(0);
textSize(20);
text("Click para",15,500);
text("agregar particulas",15,520);
text("SPACE para salir",15,550);
text("r para regresar",15,580);

if(key == ' '){
 exit(); 
}
if(key == 'r'){
 cambio = 1; 
}
}
}


}
