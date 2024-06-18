class Cabeza {
  //Atributos
  private PVector posicion; 
  private int puntaje;
  private float ancho;
  private float alto;
  private Collider collider;
  
  //Métodos Accesores
  public Cabeza(){
  }
  public Cabeza(PVector posicion, float ancho, float alto){
     this.posicion=posicion;
     this.ancho=ancho;
     this.alto=alto;
     this.puntaje=0 ;
     this.collider= new Collider(this.posicion,20,20);
  }
  
  //Métodos
  public void display(){
    fill(#3349B4);
    noStroke();
    rect(this.posicion.x, this.posicion.y, this.ancho,this.alto);
  }   
  public void aumentarPuntaje(int incremento) {
    this.puntaje += incremento;
  }
  //Metodos Accesores
  public void setPosicion(PVector posicion){
    this.posicion=posicion;
    this.collider.setPosicion(this.posicion);
  }
  public PVector getPosicion(){
    return this.posicion;
  }
  public int getPuntaje(){
    return this.puntaje;
  }
   public Collider getCollider() {
    return this.collider;
  }
} 
