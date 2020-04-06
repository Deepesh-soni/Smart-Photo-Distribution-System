import 'package:flutter/material.dart';
import 'AppLogo.dart';
import 'package:shadow/shadow.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


class WelcomeDesign extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      //textBaseline: TextBaseline.alphabetic,
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.baseline,
      
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
          child: Column(
             textBaseline: TextBaseline.alphabetic,
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height:45.0),

              Shadow(
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

              RotateAnimatedTextKit(
                text: ["Select","Upload","Share"," "],
                isRepeatingAnimation: true,
                textStyle: TextStyle(
                  fontSize:30.0,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

