class Tanque{
  private Transform transform;
  private ImageComponent imageComponent;
  private PVector velocidad; 
  
  public Tanque(Transform transform, ImageComponent imageComponent){
    this.transform=transform;
    this.imageComponent=imageComponent;
  }
  public Tanque(Transform transform, ImageComponent imageComponent, PVector velocidad){
    this.transform=transform;
    this.imageComponent=imageComponent;
    this.velocidad=velocidad;
  }
  public void dibujar(){
    imageMode(CENTER);
    this.imageComponent.displayImage(transform.getPosicion(),100,100);
  }
  
  public void mover(int direccion){
    if(direccion==0){
      this.transform.getPosicion().x-=(velocidad.x* Time.getDeltaTime(frameRate));
      if (this.transform.getPosicion().x < -100){
         this.transform.getPosicion().x=width;
      }
    }
    if (direccion==1){
        this.transform.getPosicion().x += (velocidad.x* Time.getDeltaTime(frameRate));
        if (this.transform.getPosicion().x > width){
          this.transform.getPosicion().x=-100;
        }
      }  
  }
  
  public void disparar(GestorBalas disparosRealizados){  //El metodo disparar() recibe un objeto de GestorBalas llamada disparosRealizados
    //Creo una Bala en la misma posicion del tanque
   
    Bala bala= new Bala(new PVector(this.transform.getPosicion().x,this.transform.getPosicion().y));
    //Creo un arreglo de Balas y lo obtengo a partir del arreglo de balas que tiene el GestorBalas, por eso la dependencia
    Bala[] balas=disparosRealizados.getBalas();
    //Recorro el arreglo que se llama balas y que está en el GestorBalas
    for(int i=0; i<balas.length;i++){ 
      if(balas[i]==null){       //Si el elemento del arreglo en la posicion i es nulo entonces ahi pondremos la bala
        //Le asigno la bala que hemos creado al arreglo de balas
        balas[i]= bala;
        break;
      }
    }
    //El arreglo de balas que hemos creado que ahora tiene la bala que creamos se lo asignamos al GestorBalas
    disparosRealizados.setBalas(balas);
  }
}
