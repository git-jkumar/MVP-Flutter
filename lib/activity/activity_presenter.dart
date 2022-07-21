import 'package:sample/activity/model/activity.dart';
import 'package:sample/base/network/IApiCallback.dart';
import 'package:sample/base/base_presenter.dart';
import 'model/activity_apis.dart';

class ActivityPresenter extends BasePresenter{

  ActivityPresenter(super.callback);

  void getActivity() {
    apiHost = "https://dog.ceo/api/breeds/image" ;
    initGetRequest(ActivityAPIs.GET_ACTIVITY);
  }

  @override
  onError(error) {
    callback.onError(error);
  }

  @override
  onSuccess(result) {
    callback.onResponse(Activity.fromJson(result));
  }

}

