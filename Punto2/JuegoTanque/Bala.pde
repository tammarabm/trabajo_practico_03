class Bala{
  private Transform transform;
  private ImageComponent imageComponent;
  private PVector velocidad; 
  
  public Bala(Transform transform, ImageComponent imageComponent){
    this.transform=transform;
    this.imageComponent=imageComponent;
  }
  public Bala(Transform transform, ImageComponent imageComponent, PVector velocidad){
    this.transform=transform;
    this.imageComponent=imageComponent;
    this.velocidad=velocidad;
  }
  public void dibujar(){
    this.imageComponent.displayImage(transform.getPosicion(),30,30);
  }
}
