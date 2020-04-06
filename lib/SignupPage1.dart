import 'package:flutter/material.dart';


class SignupPage1 extends StatefulWidget{

  static final String id='Signup_page';
  _SignupPageState1 createState() => _SignupPageState1();

}

class _SignupPageState1 extends State<SignupPage1> {

  String _email;
  String _password;

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        // title: Center(
        //   child: Text(
        //     "1/2",
        //     style: TextStyle(
        //       color: Colors.black,
        //     ),
        //   ),
        // ),
      ),
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
            ], 
          )
        ),
      )
    );
  }
}