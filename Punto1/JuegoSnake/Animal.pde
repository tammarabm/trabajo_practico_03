class Animal extends GameObject{
  private String tipoAnimal;
  private int puntaje;
  private PImage imagen;
  private Collider collider;
  private float ancho;
  private float alto;
  public Animal(PVector posicion){
    this.posicion=posicion;
  }
  public Animal(PVector posicion, float ancho, float alto, int puntaje){
    imagen =loadImage("raton_.png");
    this.posicion=posicion;
    this.ancho=ancho;
    this.alto=alto;
    this.puntaje=puntaje;
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
  public void setPosicion(PVector posicion){
   this.posicion=posicion;  
  }
  public int getPuntaje(){
    return this.puntaje;
  }
}
