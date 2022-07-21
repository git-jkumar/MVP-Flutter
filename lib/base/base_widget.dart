import 'package:flutter/material.dart';
import 'package:sample/base/base_presenter.dart';
import 'ui/error_builder.dart';
import 'ui/loading_builder.dart';
import 'network/IApiCallback.dart';

abstract class BaseState<P extends BasePresenter, T extends StatefulWidget> extends State<T> implements IApiCallback{

  P? mPresenter;
  FutureBuilder mBuilder =  LoadingBuilder().getLoadingBuilder();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  @override
  onError(dynamic error) {
    setState(() {
      mBuilder = ErrorBuilder().getErrorBuilder();
    });
  }

  @override
  onResponse(response) {
    // TODO: implement onResponse
    throw UnimplementedError();
  }
}