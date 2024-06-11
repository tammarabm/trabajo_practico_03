class Escenario{
  private PVector posicion; 
  private PImage imagen;
  private int tiempo;
  private int alto;
  private int ancho;
  private Animal animal;
  public Escenario(){
    imagen= loadImage("fondoSnake.jpg");   
    this.alto= height-100;
    this.ancho= width-100;
    crearAnimal();
    
  }
  public void crearAnimal(){
    this.animal= new Animal(new PVector(300,400), 30,30);
    //this.animal.setPosicion(new PVector(random(50, this.ancho), random(50, this.alto)));
  }
  public void cambiarPosicionAnimal(){
    this.animal= new Animal(new PVector(random(this.posicion.x, this.ancho), random(this.posicion.y, this.alto)),30,30);
  }
  public void eliminarAnimal(){
    this.animal=null;
  }
  
  public void display(){
    image(imagen, this.posicion.x, this.posicion.y, this.ancho, this.alto);
    this.animal.display();
  }
  public void visualizarPuntaje(){
  }
  
  public void visualizarTiempo(){
  }
  public Animal getAnimal() {
    return this.animal;
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
