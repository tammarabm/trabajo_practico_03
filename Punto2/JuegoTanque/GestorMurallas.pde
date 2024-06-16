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
  
  public void verificarColision(){
  
  }

}
