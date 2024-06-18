class GestorMurallas{
  private ArrayList<Muro> muros;
  
  public GestorMurallas(){
    muros= new ArrayList<Muro>();
  }
  
  public void agregarMuro(Muro muro){
      muros.add(muro);
  }
  
  public void dibujar(){
    for(Muro m: muros){
      m.dibujar();
    }
  }
  
  public void verificarColision(ArrayList<Bala>balas){
    for (int i = balas.size() - 1; i >= 0; i--) {
      Bala bala = balas.get(i);
      for (int j = muros.size() - 1; j >= 0; j--) {
        Muro muro = muros.get(j);
        if (bala.colisionaCon(muro)) {
          muro.recibirDanio(10);
          balas.remove(i);
          if (muro.destruir()) {
            muros.remove(j);
            crearOtroMuro();
            
          }
          break; 
        }
      }
    }
  }
  public void crearOtroMuro(){
    Transform transformMuro= new Transform(new PVector(random(width-110),random(height/2-70)));
    ImageComponent imageMuro= new ImageComponent("muro1.jpg");
    muro= new Muro(transformMuro, imageMuro, ((int)random(10,30)));
    gestorMurallas=new GestorMurallas();
    gestorMurallas.agregarMuro(muro);
  }
}
