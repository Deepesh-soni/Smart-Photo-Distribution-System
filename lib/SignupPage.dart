import 'package:flutter/material.dart';
import 'SignupPage1.dart';
import 'SignupPage2.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key key}) : super(key: key);
  static final String id="SignPage";

  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          SignupPage1(),
          SignupPage2(),   
        ],
      ), 
    );
  }
}