class Animal extends GameObject{
  /**
  private String tipoAnimal;
  private int puntajeAnimal;*/
  private PImage imagen;
 
  public Animal(){
    imagen =loadImage("raton1.png");
  }
 /** 
  public Animal(String tipoAnimal, int puntajeAnimal){
    this.tipoAnimal=tipoAnimal;
    this.puntajeAnimal= puntajeAnimal;
  }*/
  public void display(){
    image(imagen, this.posicion.x, this.posicion.y, 30,30);
  }
  
}
