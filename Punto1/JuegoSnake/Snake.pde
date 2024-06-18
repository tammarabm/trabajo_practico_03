class Snake extends GameObject {
  //Atributos
  private PVector velocidad;
  private int puntaje; 
  private Cabeza cabeza;
  private ArrayList<Cuerpo>cuerpos;
  
  //Constructor parametrizado
  public Snake(PVector posicion){
    this.posicion=posicion;
    this.puntaje=0;
    cabeza= new Cabeza(new PVector(this.posicion.x, this.posicion.y),20,20);
    cuerpos=new ArrayList<Cuerpo>(); 
  }
  
  //Metodos
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
          this.posicion.y-=(this.velocidad.y*Time.getDeltaTime(frameRate));
          break;
        }
       break;
      case 1: 
        if(this.posicion.y < escenario.getPosicion().y+escenario.getAlto()-20){
          this.posicion.y+=(this.velocidad.y*Time.getDeltaTime(frameRate));
          break;
        }
        break;
      case 2: 
        if(this.posicion.x > escenario.getPosicion().x){
          this.posicion.x-=(this.velocidad.x*Time.getDeltaTime(frameRate)); 
          break;
        }
        break;
      case 3:
        if(this.posicion.x < escenario.getPosicion().x+escenario.getAncho()-20){
          this.posicion.x+=(this.velocidad.x*Time.getDeltaTime(frameRate));
          break;
        }
        break;
    }  
    cabeza.setPosicion(new PVector(this.posicion.x, this.posicion.y));//Actualiza la posicion de la cabeza 
  
  
  // Mueve los cuerpos del snake
  //println(cuerpos.size());
    if (!cuerpos.isEmpty()) { //si la lista cuerpos no esta vacía
      //itera la lista
      for (int i = cuerpos.size() - 1; i > 0; i--) {
        // El cuerpo i toma la posición del cuerpo i-1
        cuerpos.get(i).setPosicion(cuerpos.get(i - 1).getPosicion()); 
    }
     // El primer cuerpo toma la posición anterior de la cabeza.
    cuerpos.get(0).setPosicion(new PVector(posicionActualCabeza.x, posicionActualCabeza.y));
    }
  }

  public void aumentarCuerpo(){
    if (cuerpos.size()==0) {
      //Agrega el primer cuerpo 
      cuerpos.add(new Cuerpo(new PVector(cabeza.getPosicion().x, cabeza.getPosicion().y), 20,20));
    } else {
      //como no está vacio se obtiene el último cuerpo de la lista
      Cuerpo ultimoCuerpo = cuerpos.get(cuerpos.size() - 1);
      //agrea un nuevo cuerpo en la posicion que este ultimo cuerpo
      cuerpos.add(new Cuerpo(new PVector(ultimoCuerpo.getPosicion().x, ultimoCuerpo.getPosicion().y),20,20));
    }
  }
  
  public void actualizarPuntaje(){  
    this.puntaje=cabeza.getPuntaje();   
  }
  
  //Métodos Accesores
  
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
  public int getPuntaje(){
    return this.puntaje;
  }
}
