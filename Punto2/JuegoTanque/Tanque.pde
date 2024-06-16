class Tanque{
  private Transform transform;
  private ImageComponent imageComponent;
  private PVector velocidad; 
  private Bala balas;
  
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
}
