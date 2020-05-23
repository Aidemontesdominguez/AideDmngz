class Larry{
float x, y;
float tamano;
float r,g,b,d;
float a;

Larry(float tamano_, float x_, float y_, float a_){
tamano = tamano_;
x = x_;
y = y_;
a = a_;
}

void display(){
  pushMatrix();
  translate(x,y);
  scale(tamano);
  rotateY(a);
  
  
  ellipseMode(CORNER); 
  fill(r,g,b);
  ellipse(0, 0, 200,180);
  rect(50,100,150,100);
  rect(100,200,30,30);
  //pecho
  rect(50,220,150,20);
  rect(55,260,140,20);
  rect(63,295,125,20);
  rect(70,330,110,15);
  //     x1          x2         x3         x4
  quad(100,360,    150,360,   180,400   ,70,400);
  quad(70,400,    180,400,   150,440,   100,440);
  quad(105,400,   140,400,   210,500,   190,510);
  quad(190,510,   210,500,   115,610,   105,600);
  quad(105,610,   205,655,   180,675,   125,655);
  //brazo
  quad(100,240,    120,240,   120,340,   100,340);
  quad(100,340,    230,240,   240,250,   120,340);
  quad(100,240,    120,240,   220,285,   215,300);
  quad(215,280,    250,200,   260,210,   215,300);
  //puño
  fill(199,72,60);
  stroke(10);
  quad(245,195,250,180,280,200,265,215);
  ellipse(250,140,70,70);
  ellipse(250,130,30,60);
  
  fill(234,135,125);
  noStroke();
  quad(245,195,250,180,277,187,262,212);
  ellipse(250,145,50,50);
  ellipse(252,130,10,60);

  
  fill(199,72,60);
  stroke(10);
  quad(220,245,225,230,255,250,240,260);
  ellipse(225,190,70,70);
  ellipse(225,180,30,60);
  
  
  noStroke();
  //blanco
  fill(255,255,255); 
  ellipse(10, 10, 180,160);
  rect(60,110,130,80,20,20,20,20);
  rect(105,205,20,20,10,10,10,10);
  //pecho
  rect(55,225,140,10,10,10,10,10);
  rect(60,265,130,10,10,10,10,10);
  rect(68,300,115,10,10,10,10,10);
  rect(75,335,100,5,10,10,10,10);
  //     x1          x2         x3         x4
  quad(105,365,    145,365,   180,400   ,70,400);
  quad(70,400,    180,400,   145,435,   105,435);
  quad(110,405,   135,405,   205,495,   195,505);
  quad(192,512,   208,502,   113,608,   108,598);
  quad(108,613,   202,658,   177,672,   128,652);
  //brazo
  quad(103,243,    117,243,   117,337,   103,337);
  quad(103,343,    227,243,   237,247,   123,337);
  quad(103,243,    117,242,   215,285,   218,297);
  quad(218,283,    247,203,   257,207,   218,297);
  //puño

  fill(234,135,125);
  noStroke();
  quad(220,245,225,230,250,245,235,255);
  ellipse(225,195,50,50);
  ellipse(227,180,10,60);
  

  
  
  //black
  fill(0,0,0);
  ellipse(140,100,30,50);
  triangle(120,90,  120,70,  180,100);
  popMatrix();
}


//Personajes Pantalla Final

}

class larryF{
float x, y;
float tamano;
float r,g,b,d;
float a;

larryF(float tamano_, float x_, float y_, float a_){
tamano = tamano_;
x = x_;
y = y_;
a = a_;
}

void display(){
  pushMatrix();
  translate(x,y);
  scale(tamano);
  rotateY(a);
 
  
  
  ellipseMode(CORNER); 

  fill(58,151,238);
  noStroke();
  ellipse(100,150,250,250);
  fill(255,255,255);
  quad(130,280, 110,270, 130,210, 160,210);
  
  fill(41,155,132);
  triangle(200,270, 400,270,300,400);
  
  //gorra
  fill(238,104,46);
  ellipse(190,60,210,170);
  fill(238,195,46);
  ellipse(220,90,50,50);
  
  //cra
  fill(249,212,138);
  noStroke();
  ellipse(275,250,50,30);
  rect(275,240,50,30);
  stroke(0.2);
  ellipse(190,160,25,50);
  ellipse(385,160,25,50);
  ellipse(200,100,200,150);
  
  //cabello
  fill(238,195,46);
  noStroke();
  triangle(205,150,220,130,220,200);
  triangle(350,100,400,120,400,175);
  quad(250,110,290,100,320,170, 280,140);
  quad(290,100,360,90,375,180, 330,140);
  
  //ojo
  fill(255,255,255);
  ellipse(330,165,40,30);
  ellipse(270,185,60,50);
  
  //boca2
  fill(249,212,138);
  rect(250,170,80,40);
  
  //ojo
  fill(0,0,0);
  rect(230,175,40,10);
  fill(40,173,163);
  ellipse(340,170,20,20);
  
   fill(238,104,46);
   quad(200,130, 280,95,  280,102,  200,140);
   
   fill(227,213,44);
   triangle(450,175, 470,175,460,160);
   triangle(450,175,470,175,460,200);
   triangle(400,200,440,200,420,180);
   triangle(400,200,440,200,420,240);
    

  popMatrix();
}

}

//Tom------------------------------------------------------------
class TomF{
float x, y;
float tamano;
float r,g,b,d;
float a;

TomF(float tamano_, float x_, float y_, float a_){
tamano = tamano_;
x = x_;
y = y_;
a = a_;
}

void display(){
  pushMatrix();
  translate(x,y);
  scale(tamano);
  rotateY(a);
 
  
  
  ellipseMode(CORNER); 
  
     //items
   fill(176,117,14);
   triangle(150,300,250,280,230,400);
   fill(245,179,207);
   ellipse(140,220,110,100);
   fill(139,230,226);
   ellipse(140,190,110,100);
   fill(199,182,157);
   ellipse(130,160,110,100);
   fill(211,87,63);
   ellipse(150,140,40,40);
   fill(159,212,61);
   triangle(160,147,170,120,190,115);

  //playera
  fill(108,93,116);
  triangle(200,270, 400,270,300,400);

  //cra
  fill(244,229,245);
  noStroke();
  ellipse(275,250,50,30);
  rect(275,240,50,30);
  stroke(0.2);
  ellipse(190,160,25,50);
  ellipse(385,160,25,50);
  ellipse(200,100,200,150);
  
  //cabello
  fill(66,47,18);
  noStroke();
  triangle(200,155,220,130,200,200);
  triangle(220,130,250,80,400,175);
  quad(250,110,310,80,320,170, 280,140);
  quad(290,100,360,90,375,180, 330,140);
  quad(370,170,380,180,410,120,360,115);
  triangle(390,200,360,170,415,140);
  triangle(200,160,190,120,250,135);
  

  
  //boca
  fill(255,255,255);
  ellipse(270,185,60,30);
  
  //boca2
  fill(244,229,245);
  rect(250,170,80,40);
  
    //lentes
  fill(238,140,58);
  rect(220,160,60,45);
  rect(320,160,60,45);
  rect(280,180,60,5);
  rect(380,180,20,5);
  rect(200,180,20,5);
  
  fill(244,229,245);
  rect(225,165,50,35);
  rect(325,166,50,35);
  
  //ojo Derecho
  fill(255,255,255);
  ellipse(330,165,40,30);
  fill(158,126,5);
  ellipse(340,170,20,20);
  
  //ojo Izquierdo
  fill(255,255,255);
  ellipse(230,165,40,30);
  fill(158,126,5);
  ellipse(240,170,20,20);
  

  
   //brillo
   fill(227,213,44);
   triangle(450,175, 470,175,460,160);
   triangle(450,175,470,175,460,200);
   triangle(400,200,440,200,420,180);
   triangle(400,200,440,200,420,240);
   


  popMatrix();
}

}

//Eva--------------------------------------------
class EvaF{
float x, y;
float tamano;
float r,g,b,d;
float a;

EvaF(float tamano_, float x_, float y_, float a_){
tamano = tamano_;
x = x_;
y = y_;
a = a_;
}

void display(){
  pushMatrix();
  translate(x,y);
  scale(tamano);
  rotateY(a);
 
  
  
  ellipseMode(CORNER); 
  
   //items
   noStroke();
   fill(255,255,255);
   rect(140,210,120,100,0,0,50,50);
   rect(120,230,20,10);
   rect(120,230,10,40);
   rect(120,260,20,10);
   fill(79,55,12);
   ellipse(140,190,120,40);




  //playera
  fill(120,160,21);
  triangle(200,270, 400,270,300,400);

  //cra
  fill(216,171,106);
  noStroke();
  ellipse(275,250,50,30);
  rect(275,240,50,30);
  stroke(0.2);
  ellipse(190,160,25,50);
  ellipse(385,160,25,50);
  ellipse(200,100,200,150);
  


  
  //boca
  noStroke();
  fill(0,0,10);
  rect(270,210,60,5);
  
  fill(255,255,255);
  triangle(270,215,280,215,270,230);
  
  //boca2
  //fill(244,229,245);
  //rect(250,170,80,40);
  

  
  //ojo Derecho
  fill(255,255,255);
  ellipse(330,165,40,35);
  fill(207,121,100);
  ellipse(340,170,20,20);
  
  //ojo Izquierdo
  fill(255,255,255);
  ellipse(230,165,40,35);
  fill(207,121,100);
  ellipse(240,170,20,20);
  
  //borde
  fill(216,171,106);
  rect(220,160,170,15);
  
  //cabello
  fill(238,31,85);
  noStroke();

  triangle(260,105,320,130,300,100);
  triangle(269,105,290,40,300,100);
  triangle(300,100,340,100,340,160);
  triangle(290,100,320,55,330,100);
  triangle(320,100,340,120,340,95);
  quad(310,110,390,190,370,120,320,80);
  
   //brillo
   fill(227,213,44);
   triangle(150,100, 170,100,160,75);
   triangle(150,100,170,100,160,125);
   triangle(100,125,140,125,120,105);
   triangle(100,125,140,125,120,165);
   
  //accesorios
   fill(171,230,199);
   quad(400,195,410,245,400,265,390,245);
  popMatrix();
}

}

//jack-------------------------------------------------------------
class JackF{
float x, y;
float tamano;
float r,g,b,d;
float a;

JackF(float tamano_, float x_, float y_, float a_){
tamano = tamano_;
x = x_;
y = y_;
a = a_;
}

void display(){
  pushMatrix();
  translate(x,y);
  scale(tamano);
  rotateY(a);
 
  
  
  ellipseMode(CORNER); 
  
   //items
   noStroke();
     fill(57,94,111);
  triangle(200,250,190,320,280,270);
  triangle(160,220,130,240,120,165);
  
   fill(83,120,136);
  quad(115,175,170,270,250,200,170,130);
  ellipse(110,125,80,70);
  triangle(170,270,250,200,225,270);

  
  fill(255,255,255);
  triangle(110,150,140,170,125,130);
  ellipse(150,140,10,10);



  //playera
  fill(225,198,46);
  triangle(200,270, 400,270,300,400);

  //cra
  fill(248,230,180);
  noStroke();
  ellipse(275,250,50,30);
  rect(275,240,50,30);
  stroke(0.2);
  ellipse(190,160,25,50);
  ellipse(385,160,25,50);
  ellipse(200,100,200,150);
  


  
  //boca
  noStroke();
  fill(0,0,28);
  ellipse(270,210,60,10);
  //bordeboca
  fill(248,230,180);
  ellipse(273,207,55,10);
  
  


  
  //ojo Derecho
  fill(255,255,255);
  ellipse(330,165,40,35);
  fill(46,106,132);
  ellipse(340,170,20,20);
  
  //ojo Izquierdo
  fill(255,255,255);
  ellipse(230,165,40,35);
  fill(46,106,132);
  ellipse(240,170,20,20);
  
  //borde
  fill(248,230,180);
  rect(220,185,170,15);
  
    //chapas
  fill(248,180,194);
  rect(220,195,25,15,5,5,5,5);
  rect(360,195,25,15,5,5,5,5);
  
  
  //cabello
  fill(10,22,28);
  noStroke();

  triangle(185,150,210,175,215,150);
  triangle(200,160,220,125,250,125);
  triangle(230,135,200,100,270,120);
  triangle(190,160,210,200,210,150);
  quad(310,110,390,190,370,120,320,80);
  quad(250,120,230,120,220,90,280,120);
  quad(250,120,250,100,250,80,280,120);
  quad(300,125,260,115,250,60,340,100);
  quad(300,100,300,70,330,40,350,120);
  quad(340,120,330,40,360,90,360,150);
  quad(340,120,365,70,380,90,360,150);
  quad(370,160,400,190,385,100,365,110);
  quad(400,190,365,110,400,150,400,175);
  
  
   //brillo
   fill(227,213,44);
   triangle(450,100, 470,100,460,75);
   triangle(450,100,470,100,460,125);
   triangle(400,125,440,125,420,105);
   triangle(400,125,440,125,420,165);
   
  popMatrix();
}

}

//Lizy---------------------------------------------------------------------------------
class LizyF{
float x, y;
float tamano;
float r,g,b,d;
float a;

LizyF(float tamano_, float x_, float y_, float a_){
tamano = tamano_;
x = x_;
y = y_;
a = a_;
}

void display(){
  pushMatrix();
  translate(x,y);
  scale(tamano);
  rotateY(a);
 
  
  
  ellipseMode(CORNER); 
  
   //items
   noStroke();
   fill(255,255,255);
   quad(200,250,200,250,100,440,120,440);
   fill(224,202,78);
   ellipse(100,150,200,200);
   fill(209,177,31);
   triangle(150,250,200,200,135,175);
   triangle(150,250,200,300,130,320);
   triangle(200,300,250,250,260,320);
   triangle(200,250,240,340,160,340);
   triangle(200,250,110,290,110,220);
   triangle(200,250,160,160,250,160);
   fill(225,214,152);
   ellipse(150,200,100,100);



  //playera
  fill(241,139,196);
  triangle(200,270, 400,270,300,400);

  //cra
  fill(242,200,215);
  noStroke();
  ellipse(275,250,50,30);
  rect(275,240,50,30);
  stroke(0.2);
  ellipse(190,160,25,50);
  ellipse(385,160,25,50);
  ellipse(200,100,200,150);
  


  
  //boca
  noStroke();
  fill(0,0,28);
  rect(280,220,40,5);

  //ojo Derecho
  fill(255,255,255);
  ellipse(330,165,40,35);
  fill(117,115,105);
  ellipse(340,165,20,20);
  
  //ojo Izquierdo
  fill(255,255,255);
  ellipse(230,165,40,35);
  fill(117,115,105);
  ellipse(240,165,20,20);
  
  
    //chapas
  fill(248,180,194);
  rect(240,200,25,15,5,5,5,5);
  rect(340,200,25,15,5,5,5,5);
  
  
  //cabello
  fill(196,56,73);
  noStroke();


  quad(250,80,200,150,200,200,250,300);
  quad(350,80,400,150,400,200,350,300);
  quad(250,80,350,80,350,150,250,150);

  
  
   //brillo
   fill(227,213,44);
   triangle(450,100, 470,100,460,75);
   triangle(450,100,470,100,460,125);
   triangle(400,125,440,125,420,105);
   triangle(400,125,440,125,420,165);
  popMatrix();
}

}
