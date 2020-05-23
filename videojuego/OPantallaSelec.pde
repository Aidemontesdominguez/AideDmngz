class SeleccionPersonaje{
  float r1,r2, r3, r4, r5, g1,g2,g3,g4,g5, b1,b2,b3,b4,b5;
  float a,b,c,d,e,f,g,h,i,j;
  
  SeleccionPersonaje(){
   r1 = 0;
   g1 = 150;
   b1 = 136;
   r2 = 179;
   g2 = 136;
   b2 = 255;
   r3 = 248;
   g3 = 187;
   b3= 208;
   r4 = 139;
   g4 = 195;
   b4 = 74;
   r5 = 253;
   g5 = 216;
   b5 = 53;
  }
  
  
Larry uno;
Larry dos;
Larry tres;
Larry cuatro;
Larry cinco;
void display(){
  fill(r1, g1, b1);
  rect(width/16, (height*3)/16,(width*2)/8, (height*5)/16, 20,20,20,20);
  fill(r2, g2, b2);
  rect((width*3)/8, (height*3)/16,(width*2)/8, (height*5)/16, 20,20,20,20);
  fill(r3,g3, b3);
  rect((width*11)/16,(height*3)/16,(width*2)/8, (height*5)/16, 20,20,20,20);
  fill(r4, g4, b4);
  rect(width/8, (height*9)/16,(width*2)/8, (height*5)/16, 20,20,20,20);
  fill(r5, g5, b5);
  rect((width*5)/8,(height*9)/16,(width*2)/8, (height*5)/16, 20,20,20,20);
  fill(255);
  textSize(18);
  text("                                                                                 El personaje del jugador 1",0,350);
  text("                                                                                 se seleccionara con los números",0,370);
  text("                                                                                 El personaje del jugador 2",0,390);
  text("                                                                                 se seleccionara con las letras",0,410);
    text("                                                                                 Presiona ENTER para continuar",0,550);
  
 uno = new Larry(0.3, width/8, ((height*3)/16),0);
 dos = new Larry(0.3, (width*4)/8, ((height*3)/16),0);
 tres = new Larry(0.3, ((width*13)/16), ((height*3)/16),0);
 cuatro = new Larry(0.3,((width*1.5)/8), ((height*9)/16),0);
 cinco = new Larry(0.3, ((width*6)/8), ((height*9)/16),0);
 uno.display();
 dos.display();
 tres.display();
 cuatro.display();
 cinco.display();
 fill(0,120,136);
 ellipse(width/16, ((height*3)/16), 80,80);
 fill(0);
 textSize(30);
 text("1|q",width/16+8, ((height*3)/16)+50);
 fill(139,136,255);
 ellipse((width*3)/8, ((height*3)/16), 80,80);
 fill(0);
 textSize(30);
 text("2|w",(width*3)/8 +8, ((height*3)/16)+50);
  fill(208,187,208);
 ellipse((width*11)/16, ((height*3)/16), 80,80);
 fill(0);
 textSize(30);
 text("3|e",((width*11)/16)+8, ((height*3)/16)+50);
  fill(139,195,24);
 ellipse((width/8), ((height*9)/16), 80,80);
 fill(0);
 textSize(30);
 text("4|r",(width/8)+8, ((height*9)/16)+50);
  fill(253,216,53);
 ellipse((width*5)/8,(height*9)/16, 80,80);
 fill(0);
 textSize(30);
 text("5|t",(width*5)/8+8, ((height*9)/16)+50);
}

void keyPressed(){
  if(keyPressed){
  if(key == '1'){
    fill(r1, g1, b1);
    rect(width/16, (height*3)/16,(width*2)/8, (height*5)/16);
    RPersonaje = r1;
    BPersonaje = b1;
    GPersonaje = g1;
    g1-= 10;
    Personaje1 = 1;
    }
    
    
    if(key == 'q'){
    RPersonajeD = r1;
    BPersonajeD = b1;
    GPersonajeD = g1;
    g1-= 10;
    Personaje2 = 1;
    }
    
    
  if(key == '2'){
  fill(179, 136, 255);
  rect((width*3)/8, (height*3)/16,(width*2)/8, (height*5)/16);
    RPersonaje = r2;
    BPersonaje = b2;
    GPersonaje = g2;
    g2-= 10;
    Personaje1 = 2;
    }
    
    if(key == 'w'){
    RPersonajeD = r2;
    BPersonajeD = b2;
    GPersonajeD = g2;
    g2-= 10;
    Personaje2 = 2;
    }

if(key == '3'){
  fill(248, 187, 208);
  rect((width*11)/16,(height*3)/16,(width*2)/8, (height*5)/16);
    RPersonaje = r3;
    BPersonaje = b3;
    GPersonaje = g3;
    g3-= 10;
    Personaje1 = 3;
}
    
    if(key == 'e'){
    RPersonajeD = r3;
    BPersonajeD = b3;
    GPersonajeD = g3;
    g3-= 10;
    Personaje2 = 3;
    }
    
    
if(key == '4'){
fill(139, 195, 74);
  rect(width/8, (height*9)/16,(width*2)/8, (height*5)/16);
    RPersonaje = r4;
    BPersonaje = b4;
    GPersonaje = g4;
    g4-= 10;
    Personaje1 = 4;
}
    
    if(key == 'r'){
    RPersonajeD = r4;
    BPersonajeD = b4;
    GPersonajeD = g4;
    g4-= 10;
    Personaje2 = 4;
    }
    
if(key == '5'){
fill(253, 216, 53);
  rect((width*5)/8,(height*9)/16,(width*2)/8, (height*5)/16);
    RPersonaje = r5;
    BPersonaje = b5;
    GPersonaje = g5;
    g5-= 10;
    Personaje1 = 5;
}
    
    if(key == 't'){
    RPersonajeD = r5;
    BPersonajeD = b5;
    GPersonajeD = g5;
    g5-= 10;
    Personaje2 = 5;
    } 
      //if (((key == 'q')||(key == 'w')||(key == 'e')||(key == 'r')||(key == 't'))&&((key == '1')||(key == '2')||(key == '3')||(key == '4')||(key == '5'))){
        if (key == ENTER){
        Muerte += 1;
}
  println(Personaje);
}
}
}
