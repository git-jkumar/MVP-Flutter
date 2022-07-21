import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:sample/base/network/IApiCallback.dart';

import 'env/environment.dart';

abstract class BasePresenter {

  IApiCallback callback;
  String apiHost = Environment().config.apiHost;
  Map<String, String> requestHeaders = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };

  bool useHttps = Environment().config.useHttps;
  final client = http.Client();

  BasePresenter(this.callback);

  void initGetRequest(String endPoint) async {
    final response = await client.get(Uri.parse(apiHost + endPoint),headers: requestHeaders);
    if(response.statusCode == HttpStatus.ok){
      onSuccess(jsonDecode(response.body));
    }else{
      onError(jsonDecode(response.body));
    }
  }

   onSuccess(dynamic result);
   onError(dynamic error);
}