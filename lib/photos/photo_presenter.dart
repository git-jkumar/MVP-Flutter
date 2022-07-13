import 'dart:async';
import "package:sample/photos/model/photo.dart";
import 'package:sample/base/base_presenter.dart';
import 'package:sample/photos/model/photo_apis.dart';

class PhotoPresenter extends BasePresenter{

  Future<List<Photo>> getPhotos() async {
    final parsed = await initGetRequest(PhotoAPIs.GET_PHOTOS);
    return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
  }
}