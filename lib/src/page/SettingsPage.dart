import 'package:flutter/material.dart';
import 'package:preferencias_git/src/wigdget/menuWidget.dart';
class SettingsPage extends StatefulWidget 
{

  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();


}
class _SettingsPageState extends State<SettingsPage> {
  bool _colorSecundario = false;
  int _genero = 1;
  String _nombre = 'kervis';

  TextEditingController _textController ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textController  = new TextEditingController(text: _nombre);
  }
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
                value: _colorSecundario,
                activeTrackColor: Colors.red,
                inactiveThumbColor: Colors.green,
                title: Text('Color Secundario'),
                onChanged: (value){
                  
                  setState(() {
                    _colorSecundario = value;
                  });
                },
            ),
            RadioListTile(
              value: 1,
              title: Text('Masculino'),
              groupValue: _genero,
              onChanged: (value){
                setState(() {
                  _genero = value;
                });
              },
            ),
            RadioListTile(
              value: 2,
              title: Text('Femenino'),
              groupValue: _genero,
              onChanged: (value){
                setState(() {
                  _genero = value;
                });
              },
            ),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0), 
              child: TextField(
                controller: _textController,
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