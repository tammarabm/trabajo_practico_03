class Cabeza {
  private PVector posicion; 
  private Collider collider; 
  public Cabeza(){
  }
  public Cabeza(PVector posicion){
    this.posicion=posicion;
    this.collider= new Collider(this.posicion,20,20);
  }
  public void display(){
    rect(this.posicion.x, this.posicion.y, 20,20);
  }

  public void comer(Animal a){
    boolean isCollide=this.collider.validarColision(a.getCollider());
    if (isCollide){
      println("HAY COLISION");
      println(isCollide);
      
    }else{
      println("NO HAY COLISION");
    }
  }
  public void setPosicion(PVector posicion){
    this.posicion=posicion;
    this.collider.setPosicion(this.posicion);
  }
} 
