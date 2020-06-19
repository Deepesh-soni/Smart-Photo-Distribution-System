import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' show get;
import 'package:spds/UploadScreen.dart';
import 'ImageList.dart';
import 'ImageModel.dart';
import 'dart:convert';
import 'CustomDrawer.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatefulWidget {
  static final String id = "HomeScreen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _auth = FirebaseAuth.instance;
  int i = 0;
  List<ImageModel> image = [];
  int counter = 0;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        final loggedInUser = user;
        print(loggedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  void fetchImage() async {
    counter++;

    final response =
        await get('https://jsonplaceholder.typicode.com/photos/$counter');

    final imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      image.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: <Widget>[
          Container(
            margin: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("Images/pp.jpg"),
            ),
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: ImageList(images: image),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, UploadScreen.id);
        },
        highlightElevation: 10.0,
        elevation: 10.0,
        backgroundColor: Color(0xFFE76C6A),
        splashColor: Color(0xFFE76C44),
        child: Icon(FontAwesomeIcons.upload),
      ),
    );
  }
}
