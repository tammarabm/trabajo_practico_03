class GestorBalas{
   private ArrayList<Bala>balas;
   
   //Constructor por defecto
   public GestorBalas(){
     balas= new ArrayList<Bala>();
   }
   
   public void actualizarBalas(){
     if (!balas.isEmpty()){
       for (int i=0; i<balas.size();i++){  //Recorre el ArrayList de balas
         balas.get(i).dibujar();
         balas.get(i).mover();
   
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
