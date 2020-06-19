import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupPage1 extends StatefulWidget {
  static final String id = 'Signup_page';
  _SignupPageState1 createState() => _SignupPageState1();
}

class _SignupPageState1 extends State<SignupPage1> {
  String _email;
  String _password;
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
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
        child: Container(
            padding: EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(hintText: 'Email'),
                    onChanged: (value) {
                      _email = value;
                    }),
                SizedBox(height: 15.0),
                TextField(
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Password'),
                    onChanged: (value) {
                      _password = value;
                    }),
                SizedBox(height: 15.0),
                TextField(
                    decoration: InputDecoration(hintText: 'Country'),
                    onChanged: (value) {
                      setState(() {});
                    }),
                SizedBox(height: 15.0),
                TextField(
                    decoration: InputDecoration(hintText: 'City'),
                    onChanged: (value) {
                      setState(() {});
                    }),
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            final newUser = await _auth.createUserWithEmailAndPassword(
                email: _email, password: _password);
          } catch (e) {
            print(e);
          }
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
