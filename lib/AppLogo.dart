import 'package:flutter/material.dart';
import 'package:shadow/shadow.dart';

class AppLogo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Shadow(
      offset: Offset(-8, 0),
      opacity: 0.5,
      child: Image.asset('Images/cloud202.png'),
    );
  }
}


