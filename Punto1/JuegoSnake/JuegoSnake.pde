private Snake snake;
private int direccion; // Dirección actual del snake
private int direccionNueva; // Nueva dirección del snake

public void setup(){
  size(600, 700);
  snake = new Snake(new PVector(width/2, height/2), new PVector(4, 4));
  // Inicialmente sin movimento
  direccion = -1; 
  direccionNueva = -1;
}
public void draw(){
  background(0);
  snake.display();
  if (direccionNueva != -1) {
    direccion = direccionNueva; // Actualiza la dirección solo si se cumple la condicion if
  }
  if (direccion != -1) {
    snake.mover(direccion); // Mueve el snake en la dirección actual
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


/**public void keyPressed(){
  if (key==  'w' || keyCode== UP){
    snake.mover(0);
  }else if (key==  's' || keyCode== DOWN){
    snake.mover(1);
  }else if (key==  'a' || keyCode== LEFT){
    snake.mover(2);
  }else if (key==  'd' || keyCode== RIGHT){
    snake.mover(3);
  }
}
*/
