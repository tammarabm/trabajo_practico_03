class ListaAnimal{
  //Atributos
  private ArrayList <Animal> animales;
  private ArrayList<String> registroAnimales;
  
  //Constructor por defecto
  public ListaAnimal(){
    animales= new ArrayList <Animal>(); //Inicializar el ArrayList de objetos animal
    registroAnimales=new ArrayList<String>(); //Inicializar el ArrayList de string
    crearAnimal();
  }
  
  //Métodos
  public void crearAnimal(){
    Animal animal=new Animal(new PVector(random(100,500), random(100,600)),40,40,1,"raton");
    animales.add(animal);
  }
  
  public void mostrar(){
    for (Animal a : animales) {
      a.display();
    }
  }
  public void verificarColision(Cabeza cabeza, Snake snake, int tiempo) {
    for (int i = animales.size() - 1; i >= 0; i--) { //Recorre la lista de animales
      Animal animal = animales.get(i); //Se obtiene el elemnto de la lista de animales en la posicion i y despues se lo asigna a la variable animal
      if (cabeza.getCollider().validarColision(animal.getCollider())) { //Verifica si hay colision entre la cabeza y el animal
        registroAnimales.add("El "+animal.getTipoAnimal()+ " se ha comido en el segundo: "+ tiempo); //Se agrega a una lista el registro de cada animal
        animales.remove(i); //Como hay colision se elimina el animal en la posicion y de la lista de animales
        crearAnimal(); //Se crea otro animal en una posicion aleatoria
        snake.aumentarCuerpo();  //Aumenta el cuerpo del snake
        cabeza.aumentarPuntaje(animal.getPuntaje()); //Aumenta el puntaje del snake y tiene como parametro el punto que tiene el animal.
        break;
      }
    }
  }
  //Métodos accesores
  public ArrayList<String> getRegistroAnimales(){
    return this.registroAnimales;
  }
  }
