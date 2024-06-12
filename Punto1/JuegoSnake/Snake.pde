class Snake extends GameObject {
  private PVector velocidad;
  private int puntaje; 
  private Cabeza cabeza;
  private ArrayList<Cuerpo>cuerpos;
  
  public Snake(PVector posicion){
    this.posicion=posicion;
    cabeza= new Cabeza(new PVector(this.posicion.x, this.posicion.y));
    cuerpos=new ArrayList<Cuerpo>(); 
  }
  public void display(){
    cabeza.display();
    for (Cuerpo c: cuerpos){
      c.display();
    }
  }
  
  public void mover(int direccion, Escenario escenario){
    PVector posicionActualCabeza = new PVector(cabeza.getPosicion().x, cabeza.getPosicion().y); //Mantiene la referencia a la posicion anterior de la cabeza antes de que se mueva
    
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
    cabeza.setPosicion(new PVector(this.posicion.x, this.posicion.y));//Actualiza la posicion de la cabeza 
  
  
  // Mueve los cuerpos del snake
  println(cuerpos.size());
    if (!cuerpos.isEmpty()) { //si la lista cuerpos no esta vacía
      //itera la lista
      for (int i = cuerpos.size() - 1; i > 0; i--) {
        //
        cuerpos.get(i).setPosicion(cuerpos.get(i - 1).getPosicion()); 
    }
    cuerpos.get(0).setPosicion(new PVector(posicionActualCabeza.x, posicionActualCabeza.y));
    }
  }

  public void aumentarCuerpo(){
    if (cuerpos.size()==0) {
      //Agrega el primer cuerpo 
      cuerpos.add(new Cuerpo(new PVector(cabeza.getPosicion().x, cabeza.getPosicion().y)));
    } else {
      //como no está vacio se obtiene el último cuerpo de la lista
      Cuerpo ultimoCuerpo = cuerpos.get(cuerpos.size() - 1);
      //agrea un nuevo cuerpo en la posicion que este ultimo cuerpo
      cuerpos.add(new Cuerpo(new PVector(ultimoCuerpo.getPosicion().x, ultimoCuerpo.getPosicion().y)));
    }
  }
  
  public void setPosicion(PVector posicion){
   this.posicion=posicion;
   this.cabeza.setPosicion(this.posicion);
  }
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  } 
  public PVector getPosicion(){
    return this.posicion;
  }
  public Cabeza getCabeza(){
    return this.cabeza;
  }
}
