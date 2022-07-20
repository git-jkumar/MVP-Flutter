import 'package:flutter/material.dart';
import "package:sample/photos/model/photo.dart";
import 'package:sample/photos/widget/photo_list.dart';

class PhotoFutureBuilder{
  var photoBuilder;

  PhotoFutureBuilder(bool isError, List<Photo>? photos){
    photoBuilder = FutureBuilder<List<Photo>>(
      initialData: photos,
      builder: (context, snapshot) {
        if (isError) {
          return const Center(
            child: Text('An error has occurred!'),
          );
        } else if (photos !=null) {
          return PhotosList(photos: photos);
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