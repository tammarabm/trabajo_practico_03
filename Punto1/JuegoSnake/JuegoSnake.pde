private Snake snake;
private Escenario escenario;
private int direccion; // Dirección actual del snake
private int direccionNueva; // Nueva dirección del snake
private int duracionCronometro;
private Animal animal;
private Cabeza cabeza;

public void setup(){
  size(600, 700);
  escenario= new Escenario();
  escenario.setPosicion(new PVector(50, 50));
  snake = new Snake(new PVector(300,300));
  //snake.setPosicion(new PVector(width/2, height/2));
  snake.setVelocidad(new PVector(140, 140));  
  // Inicialmente sin movimento
  direccion = -1; 
  direccionNueva = -1;
  duracionCronometro = 60;  //60 segundos
}
public void draw(){
  background(0);
  escenario.display();
  snake.display();
  if(duracionCronometro-millis()/1000 >=0){  //Si el tiempo restante es mayor o igual a 0
    fill(255);
    textSize(20);
    text("Segundos: "+(duracionCronometro-millis()/1000),10,20);
  }else {
    fill(255); 
    textAlign(CENTER,CENTER);
    text("FIN", width/2, height/2);
    noLoop();
  }
  
  cabeza= snake.getCabeza();
  animal= escenario.getAnimal();
  
  cabeza.comer(animal, escenario);
  if (direccionNueva != -1) {
    direccion = direccionNueva; // Actualiza la dirección solo si se cumple la condicion if
  }
  if (direccion != -1) {
    snake.mover(direccion, escenario); // Mueve el snake en la dirección actual
  }
}

public void keyPressed(){
  if ((key == 'w' || keyCode == UP) && direccion != 1){
     direccionNueva = 0; 
  } else if ((key == 's' || keyCode == DOWN) && direccion != 0){
     direccionNueva = 1;
  } else if ((key == 'a' || keyCode == LEFT) && direccion != 3){
     direccionNueva = 2;
  } else if ((key == 'd' || keyCode == RIGHT) && direccion != 2){
     direccionNueva = 3; 
  }
}
