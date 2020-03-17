class cabello{

float largo;
float numeroPuntos;
float posicion;

ArrayList<objeto>objetos;
atractor uno;

cabello(float largo_,float n, float xi_,float yi_, float xf_, float yf_, float xm_,float ym_){
  largo = largo_;
  numeroPuntos = n;
  
  objetos = new ArrayList();
  uno = new atractor(width/2,height/2,10,false);
  
  float len = largo / numeroPuntos;
  
  
  for(int i=0; i <=numeroPuntos; i++){
   
    objeto b = null;
    
    if(i == 0) b = new objeto(xi_,yi_,62, 39, 35,false);
    if(i == numeroPuntos) b = new objeto(xf_,yf_,62, 39, 35,false);
    if((i!= 0)&& (i!= numeroPuntos)) b = new objeto(xm_,ym_,62, 39, 35,true);
    objetos.add(b);
    
    if(i > 0){
      DistanceJointDef disart = new DistanceJointDef();
      objeto anterior = objetos.get(i-1);
      disart.bodyA = anterior.corpus;
      disart.bodyB = b.corpus;
      disart.length = mundo.scalarPixelsToWorld(len);
      disart.frequencyHz = 8;
      disart.dampingRatio = 0;
      
      DistanceJoint dj = (DistanceJoint) mundo.createJoint(disart);
    } 
  }
}

void display(){
 for (objeto b:objetos){
  /*Vec2 Fuerza = uno.atraccion(b);
  b.applyForce(Fuerza);*/
  b.display(); 
 }
  
}



}
