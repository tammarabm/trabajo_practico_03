class Snake extends GameObject {
  private PVector velocidad;
  private int puntaje; 
  private Cabeza cabeza;
  private Cuerpo[]cuerpos;
  public Snake(){ 
  }
  
  public void display(){
    cabeza= new Cabeza();
    cabeza.setPosicion(new PVector(this.posicion.x, this.posicion.y));
    cabeza.display();
  }
  
  public void mover(int direccion){
    switch(direccion){
      case 0: 
        this.posicion.y-=this.velocidad.y;
        break;
      case 1: 
        this.posicion.y+=this.velocidad.y;
        break;
      case 2: 
        this.posicion.x-=this.velocidad.x; 
        break;
      case 3: 
        this.posicion.x+=this.velocidad.x;
        break;
    }
    
  }
  public void aumentarCuerpo(){
  }
  
  public void setPosicion(PVector posicion){
   this.posicion=posicion;
  }
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
  
}
