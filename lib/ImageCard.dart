import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';


class ImageCard extends StatelessWidget {

  ImageCard({this.colour , this.cardchild, this.onPress});
  
  Color colour;
  final Widget cardchild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 150.0,
        child: Center(
          child: Icon(
            FontAwesomeIcons.plusCircle,
              size: 50.0,
              color: Color(0x55FFFFFF),
            ),
          ),
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Color(0x33FFFFFF),                 
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}





// Center(
//   child: _image == null
//     ? Text('No image selected.')
//     : Image.file(_image),
// )


