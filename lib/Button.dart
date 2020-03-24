import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  String title;
  Function onPressed;

  Button({@required this.title,@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.white,
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w700,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      elevation: 10.0,
      minWidth: 150.0,
      height: 45.0,
      );
  }
}

