import "package:sample/photos/model/photo.dart";
import 'package:sample/base/base_presenter.dart';
import 'package:sample/photos/model/photo_apis.dart';

class PhotoPresenter extends BasePresenter{

  PhotoPresenter(iPhotoResponseCallback) : super(iPhotoResponseCallback);

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