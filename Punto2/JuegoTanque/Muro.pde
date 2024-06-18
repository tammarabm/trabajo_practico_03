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
    imageMode(CENTER);
    this.imageComponent.displayImage(transform.getPosicion(),110,70);
  }
  
  public void recibirDanio(int danio){
    println(resistencia);
    resistencia-=danio;
    println(resistencia);
  }
  
  public boolean destruir(){
    return resistencia<=0; 
  }
}
