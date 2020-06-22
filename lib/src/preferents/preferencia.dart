import 'package:shared_preferences/shared_preferences.dart';
class PreferenciaUsuarios{
  
  static final PreferenciaUsuarios _instancia = new PreferenciaUsuarios._internal();
  
  factory PreferenciaUsuarios(){
    return _instancia;
  }
  
  PreferenciaUsuarios._internal();
  SharedPreferences prefs; 
  initPrefs() async
  {
      prefs = await SharedPreferences.getInstance();
  }


// get y set del genero 
get genero {
  return prefs.getInt('genero') ?? 1;
}
set genero( int value){
  prefs.setInt('genero', value);
}

}