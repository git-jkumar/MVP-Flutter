import 'package:flutter/material.dart';
import 'package:sample/activity/acitivity_future_builder.dart';

class ActivityWidget extends StatefulWidget {
  final String title;
  const ActivityWidget({Key? key,required this.title}) : super(key: key);

  @override
  State<ActivityWidget> createState() => _ActivityWidget(this.title);
}

class _ActivityWidget extends State<ActivityWidget> {
  String title;
  _ActivityWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)
      ),
      body: ActivityFutureBuilder().getActivityBuilder(),);
  }
}