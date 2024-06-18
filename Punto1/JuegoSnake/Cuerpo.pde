class Cuerpo{
  //Atributos
  private PVector posicion; 
  private float ancho;
  private float alto;
  
  //Constructor por defecto
  public Cuerpo(){
  }
  //Constructor parametrizado
  public Cuerpo(PVector posicion, float ancho, float alto){
     this.posicion=posicion;
     this.ancho=ancho;
     this.alto=alto;
  }
  
  //Metodos
   public void display(){
     fill(#3349B4);
     rect(this.posicion.x, this.posicion.y, this.ancho, this.alto);
   }
  
  //Métodos Accesores
  public void setPosicion(PVector posicion){
     this.posicion=posicion;   
  } 
  public PVector getPosicion(){
    return this.posicion; 
  }
}
