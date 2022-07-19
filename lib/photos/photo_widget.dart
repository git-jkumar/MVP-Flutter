import 'package:flutter/material.dart';
import 'package:sample/photos/photo_future_builder.dart';


class PhotoWidget extends StatefulWidget {
  final String title;
  const PhotoWidget({Key? key,required this.title}) : super(key: key);

  @override
  State<PhotoWidget> createState() => _PhotoWidget(this.title);
}

class _PhotoWidget extends State<PhotoWidget> {
  String title;
  _PhotoWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)
      ),
      body: PhotoFutureBuilder().getPhotoBuilder(),);
  }
}