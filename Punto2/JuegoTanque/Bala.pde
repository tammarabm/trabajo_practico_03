class Bala{
  //Atributos
  private PVector posicion;
  private PVector velocidad;
  private PImage imagen;
  
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
    //A la velocidad se la normaliza con DeltaTime. Primero se llama a la clase Time y después a método getDeltaTme que tiene como parametro frameRate que es una variable
    this.posicion.y+=(this.velocidad.y*Time.getDeltaTime(frameRate));
  }
  
  public boolean colisionar(Muro muro) { //Verifica si hay colision con el muro
    //Colision entre bala y muro representados por rectangulos
    //Verifica si la posicion actual de la bala colisiona con el area rectangular que ocupa el muro
    //Devuelve true si hay colision entre bala y muro, caso contrario devolverá falso
    if (this.posicion.x -15 < muro.transform.getPosicion().x+110/2 &&
        this.posicion.x + 15 > muro.transform.getPosicion().x-110/2 &&
        this.posicion.y-30 < muro.transform.getPosicion().y + 70 &&
        this.posicion.y + 30 > muro.transform.getPosicion().y-70/2){
        return true;
        }else{
          return false;
        }
  }
  
  //Metodos accesores
  public PVector getPosicion(){
    return this.posicion;
  }
}
