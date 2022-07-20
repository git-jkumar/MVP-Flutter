import 'package:flutter/material.dart';
import 'package:sample/base/ICallback.dart';
import 'package:sample/photos/model/IPhotoResponsCallback.dart';
import 'package:sample/photos/photo_future_builder.dart';
import 'package:sample/photos/photo_presenter.dart';
import 'package:sample/photos/model/photo.dart';


class PhotoWidget extends StatefulWidget {
  final String title;
  const PhotoWidget({Key? key,required this.title}) : super(key: key);

  @override
  State<PhotoWidget> createState() => _PhotoWidget(this.title);
}

class _PhotoWidget extends State<PhotoWidget> implements ICallback{
  var presenter ;
  bool isError = false;
  List<Photo>? _list;
  String title;
  _PhotoWidget(this.title);

  @override
  initState() {
    super.initState();
    presenter = PhotoPresenter(this);
    presenter.getPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)
      ),
      body: PhotoFutureBuilder(isError,_list).getPhotoBuilder(),);
  }

  @override
  onResponse(response) {
    _list = response;
  }

  @override
  onError(dynamic error) {
    // TODO: implement onError
    throw UnimplementedError();
  }
}