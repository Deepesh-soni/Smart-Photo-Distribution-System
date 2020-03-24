import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spds/ImageModel.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ImageList extends StatelessWidget{

  final List<ImageModel> images;

  ImageList({this.images});

   @override
   Widget build(BuildContext context) {
     return CustomScrollView(
          slivers: <Widget>[
            SliverStaggeredGrid.countBuilder(
              crossAxisCount: 2, 
              staggeredTileBuilder: (int index)=>StaggeredTile.fit(1), 
              itemBuilder: (context,int index){
                return ClipRRect(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.network(images[index].url),
                  ),
                );
              }, 
            itemCount: images.length,

            )
          ],
        );
   } 
}