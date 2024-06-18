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
  
  public void mover(int direccion){
    if(direccion==0){
      this.transform.getPosicion().x-=(velocidad.x* Time.getDeltaTime(frameRate));
      if (this.transform.getPosicion().x < -100){
         this.transform.getPosicion().x=width;
      }
    }
    if (direccion==1){
        this.transform.getPosicion().x += (velocidad.x* Time.getDeltaTime(frameRate));
        if (this.transform.getPosicion().x > width){
          this.transform.getPosicion().x=-100;
        }
      }  
  }
  
  public void disparar(GestorBalas disparosRealizados){  //El metodo disparar() recibe un objeto de GestorBalas llamada disparosRealizados
    //Creo una Bala en la misma posicion del tanque
    Bala bala= new Bala(new PVector(this.transform.getPosicion().x,this.transform.getPosicion().y));
    disparosRealizados.getBalas().add(bala);
  }
}
