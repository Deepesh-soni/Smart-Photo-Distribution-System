import 'package:flutter/material.dart';
import 'Button.dart';
import 'HomeScreen.dart';

class SingupPage extends StatefulWidget{

  static final String id='Signup_page';
  _SingupPageState createState() => _SingupPageState();

}

class _SingupPageState extends State<SingupPage> {

  String _email;
  String _password;

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: Center(
        child:Container(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: 'Email'),
                onChanged: (value){
                  setState(() {

                  });
                }
              ),
              SizedBox(height: 15.0),
              TextField( 
                decoration: InputDecoration(hintText: 'Password'),  
                onChanged: (value){
                  setState(() {
                       
                  });
                }
              ),
              SizedBox(height: 15.0),
              TextField(
                decoration: InputDecoration(hintText: 'Country'),
                onChanged: (value){
                  setState(() {

                  });
                }
              ),
              SizedBox(height: 15.0),
              TextField(
                decoration: InputDecoration(hintText: 'City'),
                onChanged: (value){
                  setState(() {

                  });
                }
              ),
              SizedBox(height: 20.0),
              Button(
                title: 'Sign Up',
                onPressed: (){
                  Navigator.pushNamed(context, HomeScreen.id);
                },
              ),
            ], 
          )
        ),
      )
    );
  }
}