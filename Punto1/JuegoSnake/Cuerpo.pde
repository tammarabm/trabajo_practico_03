class Cuerpo{
  private PVector posicion; 
  private float ancho;
  private float alto;
  public Cuerpo(){
  }
  public Cuerpo(PVector posicion){
     this.posicion=posicion;
  }
 
   public void display(){
     fill(255);
     rect(this.posicion.x, this.posicion.y, 20, 20);
   }
  
  public void setPosicion(PVector posicion){
   this.posicion=posicion;   
  }
  public PVector getPosicion(){
    return this.posicion; 
  }
}
