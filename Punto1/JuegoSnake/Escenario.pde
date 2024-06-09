class Escenario{
  private PVector posicion; 
  private PImage imagen;
  private int tiempo;
  private int alto;
  private int ancho;
  public Escenario(){
    imagen= loadImage("fondoSnake.jpg");
    this.alto= height-100;
    this.ancho= width-100;
  }
  
  public void display(){
    image(imagen, this.posicion.x, this.posicion.y, ancho, alto);
  }
  public void visualizarPuntaje(){
  }
  
  public void visualizarTiempo(){
  
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
