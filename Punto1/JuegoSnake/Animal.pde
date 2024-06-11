class Animal extends GameObject{
  /**
  private String tipoAnimal;
  private int puntajeAnimal;*/
  private PImage imagen;
  private Collider collider;
  private float ancho;
  private float alto;
 
  public Animal(PVector posicion, float ancho, float alto){
    imagen =loadImage("raton1.png");
    this.posicion=posicion;
    this.ancho=ancho;
    this.alto=alto;
    this.collider= new Collider(this.posicion, this.ancho,this.alto);
  }
 /** 
  public Animal(String tipoAnimal, int puntajeAnimal){
    this.tipoAnimal=tipoAnimal;
    this.puntajeAnimal= puntajeAnimal;
  }*/
  public void display(){
    image(imagen, this.posicion.x, this.posicion.y, this.ancho,this.alto);
  }
  public Collider getCollider(){
    return this.collider;
  }
  
}
