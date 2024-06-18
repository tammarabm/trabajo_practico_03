//Definimos la clase y al metodo como estatica para usarlo de manera directa. sin necesidad de crear el objeto
static class Time{
  static float getDeltaTime(float frames){
    int framesPorSegundo = round(frames); 
    float deltaTime = 1.0/framesPorSegundo;
    return deltaTime;
  }
}
