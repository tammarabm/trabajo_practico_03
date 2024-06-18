class Transform{
  //Atributos
  private PVector posicion;
  
  //Constructor
  public Transform(PVector posicion){
    this.posicion = posicion;
  }
  //Metodos Accesores
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
}
