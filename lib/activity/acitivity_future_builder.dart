import 'package:flutter/material.dart';
import 'package:sample/activity/model/activity.dart';
import 'activity_item_widget.dart';

class ActivityFutureBuilder{
  var activityBuilder;
  ActivityFutureBuilder(Activity? activity){
    activityBuilder = FutureBuilder<Activity>(
      initialData: activity,
      builder: (context, snapshot) {
        if (activity!=null) {
          return ActivityItem(activity: activity);
        }else {
          return const Center(
            child: Text('An error has occurred!'),
          );
        }
      },
    );
  }

  FutureBuilder<Activity> getActivityBuilder(){
   return activityBuilder;
  }

}