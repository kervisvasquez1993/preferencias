import 'package:flutter/material.dart';
import 'package:preferencias_git/src/wigdget/menuWidget.dart';
class HomePage extends StatelessWidget {

  static final String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias')
      ),
      drawer: Menu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('color secundario'),
          Divider(),
          Text('Genero'),
          Divider(),Text('Nombre de usuario'),
          Divider(),
        ],
      ),
      
    );
  }

}