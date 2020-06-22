import 'package:flutter/material.dart';
import 'package:preferencias_git/src/wigdget/menuWidget.dart';
class SettingsPage extends StatelessWidget 
{

  static final String routeName = 'settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes')
      ),
      drawer: Menu(),
      
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Settings', style: TextStyle( fontSize: 45.0, fontWeight: FontWeight.bold))
            ),
            Divider(),
            SwitchListTile
            (
                value: true,
                activeTrackColor: Colors.red,
                inactiveThumbColor: Colors.green,
                title: Text('Color Secundario'),
                onChanged: (value){},
            ),
            RadioListTile(
              value: 1,
              title: Text('Masculino'),
              groupValue: 1,
              onChanged: (value){},
            ),
            RadioListTile(
              value: 1,
              title: Text('Femenino'),
              groupValue: 2,
              onChanged: (value){},
            ),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0), 
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  helperText: 'Nombre de la persona usado'                  
                ),
                onChanged: (value){

                },
              ) ,
            )
        ],

      )
      
    );
  }
}