import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  String title;
  Function onPressed;

  Button({@required this.title,@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      color: Colors.white,
      child: Text(title),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      elevation: 10.0,
      );
  }
}

