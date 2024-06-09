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
        if(this.posicion.y > escenario.getPosicion().y){
          this.posicion.y-=this.velocidad.y;
          break;
        }
       break;
      case 1: 
        if(this.posicion.y < escenario.getPosicion().y+escenario.getAlto()-20){
          this.posicion.y+=this.velocidad.y;
          break;
        }
        break;
      case 2: 
        if(this.posicion.x > escenario.getPosicion().x){
          this.posicion.x-=this.velocidad.x; 
          break;
        }
        break;
      case 3:
        if(this.posicion.x < escenario.getPosicion().x+escenario.getAncho()-20){
          this.posicion.x+=this.velocidad.x;
          break;
        }
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
