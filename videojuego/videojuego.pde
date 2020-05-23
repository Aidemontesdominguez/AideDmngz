int Muerte = 0;
int Salir = 0;
int Turno = 0;
float Personaje = 0;
float Personaje1 = 0;
float Personaje2 = 0;
float RPersonaje=187, GPersonaje=222,BPersonaje=251;
float RPersonajeD, GPersonajeD, BPersonajeD;
float Vida=400;
float Vida2=400;
float Ganador;
float especial = random(30, 50);


//inicio...........................................................
Larry uno;
Larry dos;
Larry tres;
PantallaInicio inicio;
Titulo tituloInicio;
MenuEntrar Iniciar;
MenuSalir salir;
Instrucciones menu;

//eleccion............................................................
PantallaEleccion eleccion;
SeleccionPersonaje Chu;
TituloChu Elige;
TituloNombre larry;
TituloNombre Tom;
TituloNombre Lizy;
TituloNombre Eva;
TituloNombre Jack;


//pelea ....................................................
PantallaPelea pelea;
BarraDeVida Barrauno;
BarraDeVidaDos Barrados;
LogoVS logo;
TurnoJugador Turno1;
TurnoJugador Turno2;
Larry Jugador1;
Larry Jugador2;
AtaqueNormal Ataque;





//final................................................
PantallaFinal F;
Ganador tu;





void setup(){
  size(1200,600);
  
  //pantalla inicio----------------------
  inicio = new PantallaInicio();
  uno = new Larry(1.5, -50, 0,0);
  dos = new Larry(1.5, 450, 0,0);
  tres = new Larry(1.5,950, 0,0);
  tituloInicio = new Titulo();
  Iniciar = new MenuEntrar();
  salir = new MenuSalir();
  menu = new Instrucciones();
  
  //pantalla eleccion-----------------------
  eleccion = new PantallaEleccion();
  Chu = new SeleccionPersonaje();
  Elige = new TituloChu();
  larry = new TituloNombre("Larry",width/16,height/2, 0, 150, 136);
  Tom = new TituloNombre("Tom",(width*3)/8, height/2, 179, 136, 255);
  Lizy = new TituloNombre("Lizy",(width*11)/16, height/2, 248, 187, 208);
  Eva = new TituloNombre("Eva", width/8, (height*7)/8,139, 195, 74);
  Jack = new TituloNombre("Jack", (width*5)/8, (height*7)/8,253, 216, 53);
  
  
  //Pantalla pelea--------------
  pelea = new PantallaPelea();
  Barrauno = new BarraDeVida();
  Barrados = new BarraDeVidaDos();
  logo = new LogoVS();
  Turno1 = new TurnoJugador(0,0,0);
  Turno2 = new TurnoJugador(width/2,0,1);
  Jugador1 = new Larry(1,width/10,height/4,0);
  Jugador2 = new Larry(1,(width*6)/10,height/4,PI);
  Barrauno= new BarraDeVida ();
  Barrados = new BarraDeVidaDos();
  Ataque = new AtaqueNormal ();
  //Pantalla Final------------
  F = new PantallaFinal();
  tu = new Ganador();
  


}


void draw (){
  
  switch(Muerte){
  case (0):
  {
    //Inicio
  inicio.display();
  uno.display();
  dos.display();
  tres.display();
  tituloInicio.display();
  Iniciar.display();
  Iniciar.mover();
  salir.display();
  salir.mover();
  salir.keyPressed();
  
  }
  break;
  case(1):
  inicio.display();
  menu.display ();
  menu.mover();
    break;
  case(2):
  {
  //seleccion personaje
  eleccion.display();
  Elige.display();
  Chu.keyPressed();
  Chu.display();
  larry.display();
  Tom.display();
  Lizy.display();
  Eva.display();
  Jack.display();
  }
  break;
  case(3):
  {
  //Modo Pelea
  pelea.display();
  Turno1.display();
  Turno2.display();
  logo.display();
   Ataque.display();
  Ataque.mover();
  Jugador1.display();
  Jugador2.display();
  Barrauno.display();
  Barrauno.keyPressed();
  Barrados.display();
  Barrados.keyPressed();
  Turno1.turnos();
  } 
  break;
  
  
  case(4):
  {
  F.display();
  tu.display();
  tu.mover();
  tu.salir();
  }
break;
  }
}
