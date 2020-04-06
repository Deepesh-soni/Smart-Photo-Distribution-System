import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  //Colors.white,
                  Color(0xFFE76C6A),
                  Color(0xFFFF5A55),
                ])
            ),
            child: Center(
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage("Images/pp.jpg"),
              ),
            ),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            trailing: Icon(Icons.chevron_right),
            onTap: (){},
          ),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            trailing: Icon(Icons.chevron_right),
            onTap: (){},
          ),

          ListTile(
            leading: Icon(FontAwesomeIcons.bell),
            title: Text("Notification"),
            trailing: Icon(Icons.chevron_right),
            onTap: (){},
          ),

          ListTile(
            leading: Icon(FontAwesomeIcons.lock),
            title: Text("Log Out"),
            trailing: Icon(Icons.chevron_right),
            onTap: (){},
          ),
        ],
      )
    );
  }
}