import 'package:flutter/material.dart';
import 'package:sample/activity/model/activity.dart';
import "package:sample/photos/model/photo.dart";

import '../base/custom_ui/CContainer.dart';

class ActivityItem extends StatelessWidget {
  const ActivityItem({super.key, required this.activity});
  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Image.network(activity.message??"");
  }
}