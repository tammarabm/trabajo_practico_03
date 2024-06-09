class Snake extends GameObject {
  private PVector velocidad;
  private int puntaje; 
  
  
  public Snake(){
  }
  
  public Snake(PVector posicion, PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    
  }
  
  public void display(){
     rectMode(CENTER);
     rect(this.posicion.x, this.posicion.y, 20,20);
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
  
}
