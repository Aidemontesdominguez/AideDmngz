class atractor{
 float x, y;
 float ancho, alto;
 float radio;
 Body corpus;
 
 
 atractor(float x_, float y_,float radio_, boolean fixed){
   x = x_;
   y = y_;
   ancho = 151;
   alto = 1;
   radio = radio_;
   
   BodyDef definicion = new BodyDef();
   if (fixed) definicion.type = BodyType.KINEMATIC;
   else definicion.type = BodyType.STATIC;
   
   definicion.position = mundo.coordPixelsToWorld(x,y);
   corpus = mundo.createBody(definicion);
   
   
   CircleShape esfera = new CircleShape();
   esfera.m_radius = mundo.scalarPixelsToWorld(radio);
   
   PolygonShape sd = new PolygonShape();
   float Aancho = mundo.scalarPixelsToWorld(ancho);
   float Aalto = mundo.scalarPixelsToWorld(alto);
   sd.setAsBox(Aancho,Aalto);
   
      FixtureDef accesorios = new FixtureDef();
   accesorios.shape = esfera;
   accesorios.density = 1;
   accesorios.friction = 0.1;
   
   
   corpus.createFixture(accesorios);
    corpus.createFixture(esfera, 1);
    corpus.createFixture(sd,1);
   
   corpus.setAngularVelocity(random(-10,10));
   
  
   
 }
 
 
 Vec2 atraccion(objeto i){
   float distancia;
    float FuerzaAt;
   float G = 500;


   
  Vec2 pos = corpus.getWorldCenter();
  Vec2 moverPos = i.corpus.getWorldCenter();
  Vec2 fuerza = pos.sub(moverPos); 
  distancia = fuerza.length(); 
  distancia = constrain(distancia,20,20);
  fuerza.normalize();
  FuerzaAt = (G * 10*i.corpus.m_mass)/(distancia*distancia);
  fuerza.mulLocal(FuerzaAt);
   return fuerza;
 }
 
 void display(){
  fill(20,20,20); 
   noStroke();
   circle(x,y,radio*2);
   rect(x,y,ancho,alto);
 }
  
  

  
}
