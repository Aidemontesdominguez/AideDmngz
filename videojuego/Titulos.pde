class Titulo{
float tamano;
float x, y;
float r, g, b;
float dx;

Titulo(){
 tamano = (200);
 x = width/2-tamano;
 y = height/16;
 r = 243;
 g = 229;
 b = 245;
 dx = 5;
}

void display (){
noStroke();
fill(r, g, b);
rect(300, y, tamano*3, 150,50,50,50,50);
fill(0);
textSize(100);
text("SKPUNCH",350,150);
}
}



class TituloChu{
float tamano;
float x, y;
float r, g, b;
float dx;
TituloChu(){
 tamano = (300);
 x = width/2-tamano;
 y = 10;
 r = 243;
 g = 229;
 b = 245;
 dx = 5;
}

void display (){
noStroke();
fill(253, 216, 53);
rect(x, y, tamano*2, height/8,20,20,20,20);
fill(255);
textSize(50);
text("Escoge a tu personaje", tamano+50,56);
}
}

class TituloNombre{
 float tamano;
 float x, y;
 float r, g,b;
 String tex;
 
 TituloNombre(String tex_, float x_, float y_, float r_, float g_, float b_){
 tamano = (width*2)/8;
 tex = tex_;
 x = x_;
 y = y_;
 r = r_;
 g = g_;
 b = b_;
 }
 
 void display(){
 fill(r, g, b);
 rect(x, y, tamano,30);
 fill(0);
 textSize(50);
 text(tex,x+80, y+30, tamano);
 }
  
}
