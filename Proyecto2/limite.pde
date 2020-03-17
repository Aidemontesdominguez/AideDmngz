class limite{
 float x, y, ancho, alto;
 Body corpus;
 
 limite(float x_, float y_,float ancho_, float alto_){
 x = x_;  
 y = y_;
 ancho = ancho_;
 alto = alto_;
 
   BodyDef definicion = new BodyDef();
   definicion.type = BodyType.STATIC;
   definicion.position.set(mundo.coordPixelsToWorld(x,y));
   corpus = mundo.createBody(definicion);
   
   PolygonShape esfera = new PolygonShape();
   float B2ancho = mundo.scalarPixelsToWorld(ancho/2);
   float B2alto = mundo.scalarPixelsToWorld(alto/2);
   esfera.setAsBox(B2ancho,B2alto);
   
   corpus.createFixture(esfera,0.1);
 }
 
 
 
 void display(){
   pushMatrix();
     translate(x, y);
     rectMode(CENTER);
     noStroke();
     fill(0);
     rect(0,0, ancho, alto);
    popMatrix();
 }
}
