class ListaAnimal{
  ArrayList <Animal> animales;
  public ListaAnimal(){
    animales= new ArrayList <Animal>();
    crearAnimal();
  }
  public void crearAnimal(){
    Animal animal=new Animal(new PVector(random(100,500), random(100,600)),40,40,1,"raton");
    animales.add(animal);
  }
  
  public void mostrar(){
    for (Animal a : animales) {
      a.display();
    }
  }
  public void verificarColision(Cabeza cabeza, Snake snake) {
    for (int i = animales.size() - 1; i >= 0; i--) {
      Animal animal = animales.get(i);
      if (cabeza.getCollider().validarColision(animal.getCollider())) {
        animales.remove(i);
        crearAnimal();
        snake.aumentarCuerpo();
        cabeza.aumentarPuntaje(animal.getPuntaje());
        break;
      }
    }
  }
  }
