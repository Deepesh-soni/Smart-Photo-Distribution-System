import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Button.dart';
import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'package:spds/SignupPage.dart';

class Keys extends StatelessWidget {

//fORMS THE LOWER HALF OF THE WELCOME SCREEN i.e., BUTTONS FOT LOGING IN, SIGNING UP & REGISTERING THROUGH SOCIAL MEDIA PLATFORMS 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Button(
              title: "Sign In",
              onPressed: (){
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            SizedBox(width: 30.0),
            Button(title: "Sign Up",
              onPressed: (){
                Navigator.pushNamed(context, SignupPage.id);
              },
            ),
          ],
        ),

        SizedBox(height: 30.0),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Login using Social media to get quick access",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ),

        SizedBox(height: 8.0),
      
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton( 
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.facebookSquare),
              iconSize: 40.0,
            ),

            IconButton( 
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.googlePlusSquare),
              iconSize: 40.0,
            ),

            IconButton( 
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.twitterSquare),
              iconSize: 40.0,
            ),
          ],
        ),
      ],
    );
  }
}

