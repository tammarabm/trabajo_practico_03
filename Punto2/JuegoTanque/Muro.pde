class Muro{
  private Transform transform;
  private ImageComponent imageComponent;
  private int resistencia; 
  
  public Muro(Transform transform, ImageComponent imageComponent, int resistencia){
    this.transform=transform;
    this.imageComponent= imageComponent; 
    this.resistencia=resistencia;
  }
  
  public void dibujar(){
    this.imageComponent.displayImage(transform.getPosicion(),110,70);
  }
  
  public void recibirDanio(int danio){
    resistencia-=danio;
  }
  
  public boolean destruir(){
    return resistencia<=0; 
  }
}
