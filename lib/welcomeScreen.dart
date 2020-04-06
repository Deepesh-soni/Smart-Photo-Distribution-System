import 'package:flutter/material.dart';
import 'Keys.dart';
import 'WelcomeDesign.dart';


class WelcomeScreen extends StatelessWidget {

  static final String id="WelcomeScreen";
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Smart Photo Distribution System"),
        ),

      body: Column(
        children: <Widget>[
          
          Expanded(
            flex: 4,
            child: WelcomeDesign(),
          ),

          Expanded(
            flex: 3,
            child: Keys(),
          ),

        ],
      ),
    );
  }
}

