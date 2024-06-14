class Cabeza {
  private PVector posicion; 
  private float ancho;
  private float alto;
  private Collider collider; 
  private int puntaje;
  public Cabeza(){
  }
  public Cabeza(PVector posicion, float ancho, float alto){
     this.posicion=posicion;
     this.ancho=ancho;
     this.alto=alto;
     this.puntaje=0 ;
     this.collider= new Collider(this.posicion,20,20);
  }
  public void display(){
    fill(#3349B4);
    noStroke();
    rect(this.posicion.x, this.posicion.y, this.ancho,this.alto);
  }

  public void comer(Animal a, Escenario e){
    if (a!=null){
      boolean isCollide=this.collider.validarColision(a.getCollider());
      if (isCollide){
        //println("HAY COLISION");
        //println(isCollide);
        e.eliminarAnimal();
        e.cambiarPosicionAnimal();
        snake.aumentarCuerpo();
        this.puntaje += a.getPuntaje();
        //print(this.puntaje);
        
        
      }else{
      //println("NO HAY COLISION");
     }
    }
    
   }
   
  public void setPosicion(PVector posicion){
    this.posicion=posicion;
    this.collider.setPosicion(this.posicion);
  }
  public PVector getPosicion(){
    return this.posicion;
  }
  public int getPuntaje(){
    return this.puntaje;
  
  }
} 
