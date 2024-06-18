class Bala{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;
  
  //Constructor por defecto
  public Bala(){
  }
  
  //Constructor parametrizado
  public Bala(PVector posicion){
    this.posicion=posicion;
    this.velocidad= new PVector(0,-180);  //inicializamos la velocidad
    imagen=loadImage("bala.png");
  }
  
  public Bala(PVector posicion, PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
  }

  
  //Metodos
  public void dibujar(){
    image(imagen,this.posicion.x,this.posicion.y-50,30,30);
  }
  
  public void mover(){
    this.posicion.y+=(this.velocidad.y*Time.getDeltaTime(frameRate));
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  public boolean colisionaCon(Muro muro) {
    return this.posicion.x -15 < muro.transform.getPosicion().x+110/2 &&
           this.posicion.x + 15 > muro.transform.getPosicion().x-110/2 &&
           this.posicion.y-30 < muro.transform.getPosicion().y + 70 &&
           this.posicion.y + 30 > muro.transform.getPosicion().y-70/2;
  }
}
