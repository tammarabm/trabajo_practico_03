class Collider{
  private PVector posicion;
  private float alto;
  private float ancho;

  public Collider(PVector posicion, float ancho, float alto){
    this.posicion=posicion;
    this.ancho=ancho;
    this.alto=alto;
  }
  
  public boolean validarColision(ColliderCircular otroCollider){
    boolean isCollide;
    if (this.posicion.x > otroCollider.getPosicion().x+otroCollider.getAncho()){
      isCollide=false;
    }
    if (this.posicion.x+getAncho() < otroCollider.getPosicion().x){
      isCollide=false;
    }
    if (this.posicion.y > otroCollider.getPosicion().y+otroCollider.getAlto()){
      isCollide=false;
    }
    if (this.posicion.y + getAlto()< otroCollider.getPosicion().y){
      isCollide=false;
    }else{
      isCollide=true;
    }
    return isCollide;
  }
  
