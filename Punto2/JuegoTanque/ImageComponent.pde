class ImageComponent{
  //Atributos
  private PImage imagen;
  
  //Constructor parametrizado
  public ImageComponent(String path){
    imagen = loadImage(path);
  }
  
  //Metodos
  /*
  *Visualiza la imagen en la posicion que le pasemos y esta posicion está en el trasnform
 ¨*/
  public void displayImage(PVector posicion){ 
    image(imagen, posicion.x,posicion.y);
  }
  //Metodo sobrecargado
  //Además de pasarle la posicion le paso el tamaño
  public void displayImage(PVector posicion, int ancho, int alto){
    image(imagen, posicion.x,posicion.y, ancho,alto);
  }
  
}
