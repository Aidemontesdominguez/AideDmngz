class PantallaInicio{
float tamano, x, y;
float r, g, b;

PantallaInicio(){
tamano = 600;
x = 0;
y = 0;
r = 1;
g = 60;
b = 120;
}

void display(){
  fill(r,g,b);
rect(x, y, tamano*2, tamano);
}


}


class PantallaEleccion{
float tamano;
float x, y;
float r, g, b;

PantallaEleccion(){
  tamano = 600;
  x = 0;
  y = 0;
  r = 0;
  g = 0; 
  b = 0;
}

void display (){
  fill(r, g, b);
 rect(x, y, tamano*2, tamano);
 
}  
}


class PantallaPelea{
 float tamano;
 float x, y;
 float r, g, b;
 
 
PantallaPelea(){
tamano = 600;
x = 0;
y = 0;
r = 255;
g = 205;
b = 210;
}
  
void display(){
fill( r, g, b);
rect(x, y, tamano*2, tamano);
}

}



class PantallaFinal{
float tamano;
float x, y;
float r, g, b;

PantallaFinal(){
 tamano = 600;
 x = 0;
 y = 0;
 r = 183;
 g = 28;
 b = 28;
}

void display(){
 noStroke();
 fill(r, g, b);
 rect(x, y, tamano*2, tamano);
 fill(250,242,123);
 rect((tamano*2)/8,0,(tamano*2/8),tamano);
 fill(250,223,125);
 rect(((tamano*2)*(2))/8,0,(tamano*2/8),tamano);
 fill(250,191,125);
 rect(((tamano*2)*(3))/8,0,(tamano*2/8),tamano);
 fill(250,163,125);
 rect(((tamano*2)*(4))/8,0,(tamano*2/8),tamano);
  fill(250,132,125);
  rect(((tamano*2)*(5))/8,0,(tamano*2/8),tamano);
   fill(250,125,168);
  rect(((tamano*2)*(6))/8,0,(tamano*2/8),tamano);
   fill(121,75,133);
  rect(((tamano*2)*(7))/8,0,(tamano*2/8),tamano);
}

}
