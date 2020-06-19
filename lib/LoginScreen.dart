import 'package:flutter/material.dart';
import 'package:spds/Button.dart';
import 'HomeScreen.dart';
import 'Constants.dart';
import 'AppLogo.dart';
import 'SignupPage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  static final String id = "LoginScreen";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                child: AppLogo(),
                margin: EdgeInsets.only(top: 20.0),
              ),
            ),
            Expanded(
              flex: 7,
              child: Center(
                child: Container(
                    padding: EdgeInsets.all(25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextField(
                            decoration: InputDecoration(hintText: 'Email'),
                            onChanged: (value) {
                              _email = value;
                            }),
                        SizedBox(height: 15.0),
                        TextField(
                            decoration: InputDecoration(hintText: 'Password'),
                            obscureText: true,
                            onChanged: (value) {
                              _password = value;
                            }),
                        SizedBox(height: 20.0),
                        Button(
                          title: "Sign In",
                          onPressed: () async {
                            try {
                              final user =
                                  await _auth.signInWithEmailAndPassword(
                                      email: _email, password: _password);
                              if (user != null) {
                                Navigator.pushNamed(context, HomeScreen.id);
                              } else {
                                print("Not a valid user");
                              }
                            } catch (e) {
                              print(e);
                            }
                          },
                        ),
                        SizedBox(height: 15.0),
                        Text("Don't have an account ? "),
                        SizedBox(height: 10.0),
                        Button(
                          title: 'Sign Up',
                          onPressed: () {
                            Navigator.pushNamed(context, SignupPage.id);
                          },
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ));
  }
}
