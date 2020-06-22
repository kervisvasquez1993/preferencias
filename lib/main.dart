import 'package:flutter/material.dart';
import 'package:preferencias_git/src/page/HomePage.dart';
import 'package:preferencias_git/src/page/SettingsPage.dart';
import 'package:preferencias_git/src/preferents/preferencia.dart';
 
void main() async{
  WidgetsFlutterBinding.ensureInitialized(); 
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();

  runApp(MyApp());
  }
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final prefs = new PreferenciasUsuario();
    return MaterialApp(
      title: 'preferencias',
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName     : (BuildContext context) => HomePage(), 
        SettingsPage.routeName : (BuildContext context) => SettingsPage()
      },
    );
  }
}