import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spds/Constants.dart';
import 'ImageCard.dart';
import 'package:image_picker/image_picker.dart';

class SignupPage2 extends StatefulWidget{

  static final String id='SignupPage2';

  @override
  _SignupPage2State createState() => _SignupPage2State();
}

class _SignupPage2State extends State<SignupPage2> {

  // File _image;

  // Future getImage() async {
  //   var image = await ImagePicker.pickImage(source: ImageSource.camera);

  //   setState(() {
  //     _image = image;
  //   });
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[

          Expanded(
            flex: 1,
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Color(0x55FFFFFF),
                  radius:80.0,
                  backgroundImage: AssetImage("Images/dp.jpg"),
                ),

                IconButton(
                  color: Colors.cyan,
                  icon: Icon(
                    FontAwesomeIcons.camera,
                    color: Colors.white,
                  ), 
                  onPressed: (){}
                )
              ],
            )
          ),

          Expanded(
            flex:3,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Table(
                 defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                border: TableBorder.all(
                  color: kPrimaryColor,
                  width: 5.0,
                ),
                children:[
                  TableRow(
                    children: [
                      ImageCard(),
                      ImageCard(),
                    ]
                  ),

                  TableRow(
                    children: [
                      ImageCard(),
                      ImageCard(),
                    ]
                  ),

                  TableRow(
                    children: [
                      ImageCard(),
                      ImageCard(),
                    ]
                  )
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}