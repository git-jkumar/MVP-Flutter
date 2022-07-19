import 'package:flutter/material.dart';
import 'package:sample/activity/model/activity.dart';
import 'activity_item_widget.dart';
import 'activity_presenter.dart';

class ActivityFutureBuilder{

  var presenter ;
  var activityBuilder;

  ActivityFutureBuilder(){
    presenter = ActivityPresenter();
    activityBuilder = FutureBuilder<Activity>(
      future: presenter.getActivity(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text('An error has occurred!'),
          );
        } else if (snapshot.hasData) {
          return ActivityItem(activity: snapshot.data!);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  FutureBuilder<Activity> getActivityBuilder(){
   return activityBuilder;
  }

}