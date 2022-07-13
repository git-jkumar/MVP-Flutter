import 'package:flutter/material.dart';
import "package:sample/photos/model/photo.dart";
import 'package:sample/photos/widget/photo_list.dart';
import 'package:sample/photos/photo_presenter.dart';

class PhotoFutureBuilder{

  var presenter ;
  var photoBuilder;

  PhotoFutureBuilder(){
    presenter = PhotoPresenter();
    photoBuilder = FutureBuilder<List<Photo>>(
      future: presenter.getPhotos(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text('An error has occurred!'),
          );
        } else if (snapshot.hasData) {
          return PhotosList(photos: snapshot.data!);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  FutureBuilder<List<Photo>> getPhotoBuilder(){
   return photoBuilder;
  }

}