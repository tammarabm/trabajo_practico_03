class Escenario{
  //Atributos
  private PVector posicion; 
  private PImage imagen;
  private int alto;
  private int ancho;
  private ListaAnimal animales;
  
  //Constructor por defecto
  public Escenario(){
    imagen= loadImage("fondoSnake.jpg");   
    this.alto= height-100;
    this.ancho= width-100;
    animales= new ListaAnimal();
  }
  
  //Metodos
  public void display(){
    image(imagen, this.posicion.x, this.posicion.y, this.ancho, this.alto);
    animales.mostrar();
  }
 
 //Métodos Accesores
  public ListaAnimal getListaAnimales() {
    return this.animales;
  }
  public PVector getPosicion(){
    return this.posicion;
  }
  public void setPosicion(PVector posicion){
   this.posicion=posicion;  
  }
  
  public int getAlto(){
    return this.alto;
  }
  
  public int getAncho(){
    return this.ancho;
  }
}
