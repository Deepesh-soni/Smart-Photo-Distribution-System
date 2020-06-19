import 'package:flutter/material.dart';
import 'dart:async';
import 'Constants.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class UploadScreen extends StatefulWidget {
  static final String id = "Upload_Screen";

  @override
  _UploadScreenState createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  List<Asset> images = List<Asset>();
  //String _error;

  @override
  void initState() {
    super.initState();
  }

  Widget buildGridView() {
    if (images != null && images.isNotEmpty)
      return GridView.count(
        crossAxisCount: 2,
        children: List.generate(images.length, (index) {
          Asset asset = images[index];
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: AssetThumb(
              asset: asset,
              width: 300,
              height: 300,
            ),
          );
        }),
      );
    else
      return Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Image.asset(
                "Images/upload1.gif",
              ),
            ),
            Text(
              'NO IMAGE SELECTED YET',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('Select images to upload'),
          ],
        ),
      );
  }

  Future<void> loadAssets() async {
    setState(() {
      images = List<Asset>();
    });

    List<Asset> resultList;
    String error;

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
      );
    } on Exception catch (e) {
      error = e.toString();
      print(error);
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      images = resultList;
      //if (error == null) _error = 'No Error Dectected';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: <Widget>[
            Builder(builder: (BuildContext context) {
              return FlatButton(
                child: Text(
                  "Upload",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
              );
            }),
          ],
        ),
        body: buildGridView(),
        bottomNavigationBar: BottomAppBar(
          color: kPrimaryColor,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera,
                    color: Colors.white,
                  ),
                  iconSize: 30.0,
                ),
                IconButton(
                  onPressed: loadAssets,
                  icon: Icon(
                    Icons.image,
                    color: Colors.white,
                  ),
                  iconSize: 30.0,
                ),
              ],
            ),
          ),
        )
      );
  }
}
