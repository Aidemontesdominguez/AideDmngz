class objeto{

  float tamano;
  float x, y;
  Body corpus;
  float radius = 3;
  float r,g,b;
 
 objeto(float x_, float y_,float r_, float g_, float b_, boolean fixed){
   x = x_;
   y = y_;
   r = r_;
   g = g_;
   b = b_;
   

   BodyDef definicion = new BodyDef();
   if (fixed) definicion.type = BodyType.DYNAMIC;
   else definicion.type = BodyType.STATIC;
   
   definicion.position.set(mundo.coordPixelsToWorld(x,y));
   corpus = mundo.createBody(definicion);
   
   CircleShape mesfera = new CircleShape();
   mesfera.m_radius = mundo.scalarPixelsToWorld(radius);
   
   FixtureDef accesorios = new FixtureDef();
   accesorios.shape = mesfera;
   accesorios.density = 5;
   accesorios.friction = 0.1;
   accesorios.restitution =0.8;
   
   corpus.createFixture(accesorios);
   
   corpus.setLinearVelocity(new Vec2(5,5));
   corpus.setAngularVelocity(800);
 }
 
 
 void applyForce(Vec2 fuerza){
   corpus.applyForce(fuerza, corpus.getWorldCenter());
   
 }
 
 void display(){
   Vec2 pos = mundo.getBodyPixelCoord(corpus);
   pushMatrix();
   translate(pos.x, pos.y);
   fill(r,g,b);
   noStroke();
   circle(0,0,radius);
   popMatrix();
 }


 }
 
