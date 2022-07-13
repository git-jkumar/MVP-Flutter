import 'package:flutter/material.dart';
import 'package:sample/photos/photo_future_builder.dart';
import 'package:sample/login/model/UserInfo.dart';

class PhotoWidget extends StatefulWidget {
  final UserInfo userInfo;
  const PhotoWidget({Key? key,required this.userInfo}) : super(key: key);

  @override
  State<PhotoWidget> createState() => _PhotoWidget(this.userInfo);
}

class _PhotoWidget extends State<PhotoWidget> {
  UserInfo userInfo;
  _PhotoWidget(this.userInfo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(userInfo.username)
      ),
      body: PhotoFutureBuilder().getPhotoBuilder(),);
  }
}