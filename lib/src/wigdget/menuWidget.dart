import 'package:flutter/material.dart';
import 'package:preferencias_git/src/page/HomePage.dart';
import 'package:preferencias_git/src/page/SettingsPage.dart';
class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('mi menu'),
            decoration: BoxDecoration(
              image:  DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          ListTile(
            leading: Icon(Icons.people, color: Colors.blue),
            title: Text('People'),
            onTap: (){ Navigator.pushReplacementNamed(context, HomePage.routeName);},
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue),
            title: Text('People'),
            onTap: (){
              Navigator.pushReplacementNamed(context, SettingsPage.routeName);
            },
          ),
         
        ],
      ), 
    );
  }
}