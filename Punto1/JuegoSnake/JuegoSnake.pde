private Snake snake;
private Escenario escenario;
private Cabeza cabeza;
private int direccion; // Dirección actual del snake
private int direccionNueva; // Nueva dirección del snake
private int duracionCronometro; //El tiempo del juego

public void setup(){
  size(600, 700);
  escenario= new Escenario();
  escenario.setPosicion(new PVector(50, 50));
  snake = new Snake(new PVector(300,300));
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
  visualizarTiempoPuntaje();
  cabeza= snake.getCabeza();
  //Verifica si el snake come un animal y en que segundo
  int tiempo = duracionCronometro - millis() / 1000;
  escenario.getListaAnimales().verificarColision(cabeza, snake, tiempo);
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

public void visualizarTiempoPuntaje(){
  if(duracionCronometro-millis()/1000 >0){  //Si el tiempo restante es mayor o igual a 0
    fill(255);
    textSize(20);
    text("Tiempo: "+(duracionCronometro-millis()/1000),50,30);
    snake.actualizarPuntaje();
    text("Puntaje: " + snake.getPuntaje(), width-140, 30);
  }else {
    fill(255); 
    text("Tiempo: "+ (duracionCronometro-millis()/1000),50,30);
    text("Puntaje: " + snake.getPuntaje(), width-140, 30);
    textAlign(CENTER,CENTER);
    mostrarRegistroAnimales();
    noLoop();
  }
}
public void mostrarRegistroAnimales(){
  ArrayList<String>registro=escenario.getListaAnimales().getRegistroAnimales();
  int y = height / 2 - 200;
  for (String r : registro) {
    text(r, width / 2, y);
    y += 20;
  }
}
  
