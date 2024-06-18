class GestorBalas{
   private Bala[] balas;
   
   //Constructor por defecto
   public GestorBalas(){
     balas=new Bala[1000];
   }
   
   public void actualizarBalas(){
     for(Bala b: balas){
       if(b!=null){
         b.mover();
         b.dibujar();
       }
     }
   }
   //Metodos accesores
   public Bala[] getBalas(){
     return this.balas;
   }
   
   public void setBalas(Bala[] balas){
     this.balas=balas;
     
   }
   
}
