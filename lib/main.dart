import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:preferencias_git/src/page/HomePage.dart';
import 'package:preferencias_git/src/page/SettingsPage.dart';
import 'package:preferencias_git/src/preferents/preferencia.dart';
 
void main() async{
  final prefs = new PreferenciaUsuarios();
  await prefs.initPrefs();

  runApp(MyApp());
  }
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'preferencias',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName     : (BuildContext context) => HomePage(), 
        SettingsPage.routeName : (BuildContext context) => SettingsPage()
      },
    );
  }
}