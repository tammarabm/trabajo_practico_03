class Cabeza {
  private PVector posicion; 
  private Collider collider; 
  private int puntaje;
  public Cabeza(){
  }
  public Cabeza(PVector posicion){
    this.posicion=posicion;
    this.puntaje=0;
    this.collider= new Collider(this.posicion,20,20);
  }
  public void display(){
    fill(#D33535);
    //noStroke();
    rect(this.posicion.x, this.posicion.y, 20,20);
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
