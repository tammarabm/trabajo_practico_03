private Tanque tanque;
private JoyPad joyPad;
private Muro muro;
private GestorMurallas gestorMurallas;
private GestorBalas gestorBalas;

public void setup(){
  size(700,500);
  //Muro
  Transform transformMuro= new Transform(new PVector(random(width-110),random(height/2-70)));
  ImageComponent imageMuro= new ImageComponent("muro1.jpg");
  muro= new Muro(transformMuro, imageMuro, ((int)random(10,30)));
  gestorMurallas=new GestorMurallas();
  gestorMurallas.agregarMuro(muro);
  
  //Tanque
  Transform transformTanque = new Transform(new PVector(width/2,height-40));
  ImageComponent imageTanque = new ImageComponent("tanque.png");
  tanque = new Tanque(transformTanque,imageTanque, new PVector(320,0));
  
  //JoyPad
  joyPad = new JoyPad();
  
  //GestorBalas
  gestorBalas=new GestorBalas();

}

public void draw(){
  background(0);
  gestorMurallas.dibujar();
  gestorBalas.actualizarBalas();
  tanque.dibujar();
  gestorMurallas.verificarColision(gestorBalas.getBalas());
  
  if(joyPad.isRightPressed()){
    tanque.mover(1);
  }  
  if(joyPad.isLeftPressed()){
    tanque.mover(0);
  }
}

public void keyPressed(){
    if (key== 'd' || keyCode==RIGHT){
      joyPad.setRightPressed(true);
  }
    if (key== 'a' || keyCode==LEFT){
      joyPad.setLeftPressed(true);
  }
    if (keyCode==ENTER){
       tanque.disparar(gestorBalas);   
  }
}

public void keyReleased(){
  if (key== 'd' || keyCode==RIGHT){
     joyPad.setRightPressed(false);
  }
  if (key== 'a' || keyCode==LEFT){
     joyPad.setLeftPressed(false);
  }
}
