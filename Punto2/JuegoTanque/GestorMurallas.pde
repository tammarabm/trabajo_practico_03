class GestorMurallas{
  //Atributos
  private ArrayList<Muro> muros;
  
  //Constructor por efecto
  public GestorMurallas(){
    muros= new ArrayList<Muro>();//Inicializacion del ArrayList de objetos Muro
  }
  //Metodos
  public void dibujar(){
    for(Muro m: muros){  //Itera la lista muros 
      m.dibujar(); //dibuja el muro 
    }
  }
  
  public void verificarColision(ArrayList<Bala>balas){
    for (int i = balas.size() - 1; i >= 0; i--) {  //Recorre la lista balas
      Bala bala = balas.get(i); //Se accede al elemento de la lista balas en la posicion i y despues se lo asigna a la variable bala
      for (int j = muros.size() - 1; j >= 0; j--) { //Recorre la lista de muros
        Muro muro = muros.get(j); //Se accede al elemnto de la lista muros en la posicion i y despues se lo asigna a la variable muro
        if (bala.colisionar(muro)) { //Se llama al metodo de la clase Bala.Verifica si la bala ha colisionado con el muro. Devuelve True si han colisionado
          muro.recibirDanio(10); //Se llama al metodo recibirDanio() de la clase Muro. Se resta a la resistencia del muro 10 puntos
          balas.remove(i); //La bala en la posicion i se elimina porque hay colision con el muro
          if (muro.destruir()) { //Se llama al metodo destruir de la clase Muro. Si la resistencia llega a 0 el muro se destruye
            muros.remove(j); //Se elimina el muro en la posicion j porque fue destruido
            crearOtroMuro(); //Despues de eliminar el muro se crea otro muro en otra  posicion aleatoria
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
    gestorMurallas.getMuros().add(muro);
  }
  
  //Metodos Accesores
  public ArrayList<Muro> getMuros(){
    return this.muros;
  }
}
