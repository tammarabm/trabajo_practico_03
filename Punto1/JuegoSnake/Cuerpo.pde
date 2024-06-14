class Cuerpo{
  private PVector posicion; 
  private float ancho;
  private float alto;
  public Cuerpo(){
  }
  public Cuerpo(PVector posicion, float ancho, float alto){
     this.posicion=posicion;
     this.ancho=ancho;
     this.alto=alto;
  }
   public void display(){
     //fill(255);
     fill(#3349B4);
     rect(this.posicion.x, this.posicion.y, this.ancho, this.alto);
   }
  
  public void setPosicion(PVector posicion){
     this.posicion=posicion;   
  }
  
  public PVector getPosicion(){
    return this.posicion; 
  }
}
