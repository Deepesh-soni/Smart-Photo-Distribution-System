import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';


class ImageCard extends StatefulWidget {

  @override
  _ImageCardState createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {

  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: getImage,
      child: Container(
        height: 150.0,
        child: _image == null 
        ? Center(
            child: Icon(
              FontAwesomeIcons.plusCircle,
              size: 50.0, 
              color: Color(0x55FFFFFF),
              ),
          )
        : FittedBox(
          child: Image.file(_image),
          fit: BoxFit.fill,
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



