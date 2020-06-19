import 'package:flutter/material.dart';
import 'UploadScreen.dart';
import 'welcomeScreen.dart';
import 'LoginScreen.dart';
import 'HomeScreen.dart';
import 'Constants.dart';
import 'package:spds/SignUpPage.dart';

void main() => runApp(SPDS());

class SPDS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Color(0xFFE76C6A),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        UploadScreen.id: (context) => UploadScreen(),
        SignupPage.id: (context) => SignupPage(),
      },
    );
  }
}
