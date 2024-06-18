class Tanque{
  private Transform transform;
  private ImageComponent imageComponent;
  private PVector velocidad; 
  
  public Tanque(Transform transform, ImageComponent imageComponent){
    this.transform=transform;
    this.imageComponent=imageComponent;
  }
  public Tanque(Transform transform, ImageComponent imageComponent, PVector velocidad){
    this.transform=transform;
    this.imageComponent=imageComponent;
    this.velocidad=velocidad;
  }
  public void dibujar(){
    imageMode(CENTER);
    this.imageComponent.displayImage(transform.getPosicion(),100,100);
  }
  
  public void mover(int direccion){ //Cambia la posicion del tanque en funcion de su velocidad
    if(direccion==0){ //0:izquierda
    //A la velocidad se la normaliza con DeltaTime. Primero se llama a la clase Time y después a método getDeltaTme que tiene como parametro frameRate que es una variable
      this.transform.getPosicion().x-=(velocidad.x* Time.getDeltaTime(frameRate));  
      if (this.transform.getPosicion().x < -100){ //Verifica si la posicion del tanque es menor al lienzo 
         this.transform.getPosicion().x=width; //Ahora la posicion del tanque será al final del lienzo
      }
    }
    if (direccion==1){//1:derecha
        this.transform.getPosicion().x += (velocidad.x* Time.getDeltaTime(frameRate));//A la velocidad se la normaliza con DeltaTime
        if (this.transform.getPosicion().x > width){ //Verifica si la posicion del tanque es mayor al ancho del lienzo 
          this.transform.getPosicion().x=-100; //Ahora la posicion del tanque será al "inicio" del lienzo
        }
      }  
  }
  
  public void disparar(GestorBalas disparosRealizados){  //El metodo disparar() recibe un objeto de GestorBalas llamada disparosRealizados
    //Creo una Bala en la misma posicion del tanque
    Bala bala= new Bala(new PVector(this.transform.getPosicion().x,this.transform.getPosicion().y));
    //Se agrega la bala que hemos creado al arreglo de balas que está en el GestorBalas
    disparosRealizados.getBalas().add(bala);
  }
}
