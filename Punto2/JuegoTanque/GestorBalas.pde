class GestorBalas{
  //Atributos
   private ArrayList<Bala>balas;
   
   //Constructor por defecto
   public GestorBalas(){
     balas= new ArrayList<Bala>(); //Inicializacion del ArrayList de objetos Bala
   }
   
   public void actualizarBalas(){
     if (!balas.isEmpty()){ //Pregunta si la lista balas está vacía
       for (int i=0; i<balas.size();i++){  //Recorre el ArrayList de balas
         balas.get(i).dibujar(); //Dibuja la bala en la posicion i
         balas.get(i).mover(); //Mueve la bala en la posicion i
   
        // Elimina la bala si su posicion en y es menor a 0
        if (balas.get(i).getPosicion().y < 0) {
           balas.remove(i); //Eliminia el globo i del ArrayList
        } 
      }
     }
   }
   //Metodos accesores
   public ArrayList<Bala> getBalas(){
     return this.balas;
   }
}
