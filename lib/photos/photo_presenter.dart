import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sample/photos/model/IPhotoResponsCallback.dart';
import "package:sample/photos/model/photo.dart";
import 'package:sample/base/base_presenter.dart';
import 'package:sample/photos/model/photo_apis.dart';

class PhotoPresenter extends BasePresenter<IPhotoResponseCallback>{


  PhotoPresenter(iPhotoResponseCallback) : super(iPhotoResponseCallback);

  // Future<List<Photo>> getPhotos() async {
  //   final parsed = await initGetRequest(PhotoAPIs.GET_PHOTOS);
  //   return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
  // }

  void getPhotos() async {
     initGetRequest(PhotoAPIs.GET_PHOTOS);
  }

  @override
  onError(error) {
    // TODO: implement onError
    throw UnimplementedError();
  }

  @override
  onSuccess(result) {
    callback.onResponse(result.map<Photo>((json) => Photo.fromJson(json)).toList());
  }


}