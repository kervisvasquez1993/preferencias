import 'package:flutter/material.dart';
import 'package:preferencias_git/src/preferents/preferencia.dart';
import 'package:preferencias_git/src/wigdget/menuWidget.dart';

class HomePage extends StatelessWidget {
  
  

  static final String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    final prefs = new PreferenciasUsuario();
    prefs.ultimaPagina =HomePage.routeName; 
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias'),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue ,
      ),
      drawer: Menu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('color secundario : ${prefs.colorSecundario}'),
          Divider(),
          Text('Genero ${prefs.genero}'),
          Divider(),Text('Nombre de usuario : ${prefs.nombreUsuario}'),
          Divider(),
        ],
      ),
      
    );
  }

}