abstract class GameObject{
  protected PVector posicion;
  
  public abstract void display();
 
  public void setPosicion(PVector posicion){
   this.posicion=posicion;  
  }
}
