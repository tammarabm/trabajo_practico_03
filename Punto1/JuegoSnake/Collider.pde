class Collider{
  private PVector posicion;
  private float alto;
  private float ancho;

  public Collider(PVector posicion, float ancho, float alto){
    this.posicion=posicion;
    this.ancho=ancho;
    this.alto=alto;
  }
  
  public boolean validarColision(Collider otroCollider){
    boolean isCollide;
    if (this.posicion.x > otroCollider.getPosicion().x+otroCollider.getAncho()){
      isCollide=false;
    }
    else if (this.posicion.x+getAncho() < otroCollider.getPosicion().x){
      isCollide=false;
    }
    else if (this.posicion.y > otroCollider.getPosicion().y+otroCollider.getAlto()){
      isCollide=false;
    }
    else if (this.posicion.y + getAlto()< otroCollider.getPosicion().y){
      isCollide=false;
    }else{
      isCollide=true;
    }
    //println(this.posicion);
    //println(otroCollider.getPosicion());
    return isCollide;
  }
  public PVector getPosicion(){
    return this.posicion; 
  }
  public float getAncho(){
    return this.ancho;
  }
  public float getAlto(){
    return this.alto;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion=posicion;
  }
}
  
