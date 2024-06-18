class Muro{
  //Atributos
  private Transform transform;
  private ImageComponent imageComponent;
  private int resistencia; 
  
  //Constructores
  public Muro(Transform transform, ImageComponent imageComponent, int resistencia){
    this.transform=transform;
    this.imageComponent= imageComponent; 
    this.resistencia=resistencia;
  }
  
  //Métodos
  public void dibujar(){
    imageMode(CENTER);
    this.imageComponent.displayImage(transform.getPosicion(),110,70);
  }
  
  public void recibirDanio(int danio){
    resistencia-=danio; //Se resta a la resistencia el daño de la bala
  }
  
  public boolean destruir(){
    return resistencia<=0;   //Si la resistencia es menor o igual a cero se destruye. True
  }
}
