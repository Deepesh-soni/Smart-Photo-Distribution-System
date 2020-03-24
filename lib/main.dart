import 'package:flutter/material.dart';
import 'UploadScreen.dart';
import 'welcomeScreen.dart';
import 'LoginScreen.dart';
import 'HomeScreen.dart';
import 'Constants.dart';
import 'SignupPage.dart';
import 'SignupPage2.dart';


void main() => runApp(SPDS());

class SPDS extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor:Color(0xFFE76C6A), 
      ),
      initialRoute: SignupPage2.id,
      routes: {
        LoginScreen.id: (context)=>LoginScreen(),
        HomeScreen.id: (context)=>HomeScreen(),
        WelcomeScreen.id: (context)=>WelcomeScreen(),
        UploadScreen.id: (context)=>UploadScreen(),
        SignupPage.id: (context)=>SignupPage(),
        SignupPage2.id: (context)=>SignupPage2(),  
      },
    );
  }
}

