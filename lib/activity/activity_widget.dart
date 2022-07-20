import 'package:flutter/material.dart';
import 'package:sample/activity/acitivity_future_builder.dart';
import 'package:sample/activity/activity_presenter.dart';
import 'package:sample/base/base_widget.dart';
import '../base/error_builder.dart';
import '../base/loading_builder.dart';

class ActivityWidget extends StatefulWidget {
  final String title;
  const ActivityWidget({Key? key,required this.title}) : super(key: key);

  @override
  State<ActivityWidget> createState() => _ActivityWidget(this.title);
}

class _ActivityWidget extends BaseState<ActivityPresenter,ActivityWidget> {
  FutureBuilder? builder =  LoadingBuilder().getLoadingBuilder();
  String title;
  _ActivityWidget(this.title);

  @override
  initState() {
    super.initState();
    mPresenter = ActivityPresenter(this);
    mPresenter?.getActivity();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: builder,);
  }

  @override
  onResponse(response) {
    setState(() {
      builder = ActivityFutureBuilder(response).getActivityBuilder();
    });
  }

  @override
  onError(error) {
    super.onError(error);
    setState(() {
      builder = ErrorBuilder().getErrorBuilder();
    });
  }
}