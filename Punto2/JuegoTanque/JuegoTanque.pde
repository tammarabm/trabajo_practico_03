private Tanque tanque;
private JoyPad joyPad;
private Muro muro;
private GestorMurallas gestorMurallas;
private PImage fondo;
private Bala bala;

public void setup(){
  size(700,500);
  fondo=loadImage("fondo.jpg");
 
  //Muro
  Transform transformMuro= new Transform(new PVector(random(width-110),random(height/2-70)));
  ImageComponent imageMuro= new ImageComponent("muro1.jpg");
  muro= new Muro(transformMuro, imageMuro, 5);
  gestorMurallas=new GestorMurallas();
  gestorMurallas.agregarMuro(muro);
  
  //Tanque
  Transform transformTanque = new Transform(new PVector(width/2,height-90));
  ImageComponent imageTanque = new ImageComponent("tanque.png");
  tanque = new Tanque(transformTanque,imageTanque, new PVector(320,0));
  
  //JoyPad
  joyPad = new JoyPad();
  
  //Bala
  Transform transformBala= new Transform(new PVector(transformTanque.getPosicion().x,transformTanque.getPosicion().y));
  ImageComponent imageBala= new ImageComponent("bala.png");
  bala= new Bala(transformBala, imageBala, new PVector(0,0));
  
}

public void draw(){
  //background(#4400BC);
  tint(#31AA16);
  image(fondo,0,0,width,height);
  noTint();
  gestorMurallas.dibujar();
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
