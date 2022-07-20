import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:sample/activity/acitivity_future_builder.dart';
import 'package:sample/activity/activity_presenter.dart';
import 'package:sample/activity/model/activity.dart';
import 'package:sample/base/base_presenter.dart';
import '../base/ICallback.dart';

abstract class BaseState<P extends BasePresenter, T extends StatefulWidget> extends State<T> implements ICallback{

  P? mPresenter;
  bool isResponseError = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  onError(dynamic error) {
    if(error['error'].isNotEmpty || error['status'] != 200) {
      isResponseError = true;// make error boolean variable true and set in view if true show error message.
    }
  }

  @override
  onResponse(response) {
    // TODO: implement onResponse
    throw UnimplementedError();
  }
}