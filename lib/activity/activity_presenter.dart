import 'dart:async';
import 'package:sample/activity/model/activity.dart';
import 'package:sample/base/base_presenter.dart';
import 'model/activity_apis.dart';

class ActivityPresenter extends BasePresenter{

  Future<Activity> getActivity() async {
    apiHost = "https://dog.ceo/api/breeds/image" ;
    final parsed = await initGetRequest(ActivityAPIs.GET_ACTIVITY);
    return Activity.fromJson(parsed);
  }
}

