import 'package:flutter/material.dart';
import 'package:preferencias_git/src/wigdget/menuWidget.dart';
class SettingsPage extends StatelessWidget {

  static final String routeName = 'settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes')
      ),
      drawer: Menu(),
      
      body: Center(
        child : Text('ajustes'),
      )
      
    );
  }
}