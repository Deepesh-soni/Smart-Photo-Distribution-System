import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Button.dart';
import 'package:shadow/shadow.dart';
import 'LoginScreen.dart';
import 'AppLogo.dart';

class WelcomeScreen extends StatelessWidget {

  static final String id="WelcomeScreen";
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Smart Photo Distribution System"),
        ),

      body: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(left:15.0,right: 8.0),
                      child: AppLogo(),
                    ),
                  ),

                  Expanded(
                    flex:5,
                    child: Shadow(
                      offset: Offset(-5, 0),
                      opacity: 0.2,
                      child: Text(
                        "SHARE🚀",
                       // "SHARE",
                        style: TextStyle(
                          fontSize:50.0,
                          color: Colors.white,
                          fontWeight:FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 4,
                child: Column(
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
                        onPressed: (){},
                      ),
                    ],                
                  ),

                  SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Login using Social media to get quick access",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,

                ),),
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
              ),
            ),

            
          ],
        )
      ),

    );
  }
}

