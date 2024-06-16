private Tanque tanque;
private JoyPad joyPad;
private Bala bala;
public void setup(){
  size(500,500);
  Transform transformTanque = new Transform(new PVector(width/2,height-90));
  ImageComponent imageTanque = new ImageComponent("tanque.png");
  tanque = new Tanque(transformTanque,imageTanque, new PVector(320,0));
  joyPad = new JoyPad();
  Transform transformBala = new Transform(new PVector(width/2,height/2));
  ImageComponent imageBala = new ImageComponent("bala.png");
  bala = new Bala(transformBala,imageBala, new PVector(320,0));
}

public void draw(){
  background(#4400BC);
  tanque.dibujar();
  bala.dibujar();
    
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
}

public void keyReleased(){
  if (key== 'd' || keyCode==RIGHT){
     joyPad.setRightPressed(false);
  }
  if (key== 'a' || keyCode==LEFT){
     joyPad.setLeftPressed(false);
  }
}
