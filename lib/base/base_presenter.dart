import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:sample/base/ICallback.dart';
import 'env_config/env.dart';

abstract class BasePresenter <T extends ICallback> {

  T callback;
  String apiHost = Environment().config.apiHost;
  Map<String, String> requestHeaders = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };

  bool useHttps = Environment().config.useHttps;
  final client = http.Client();

  BasePresenter(this.callback);


  init(String environment){
    Environment().initConfig(environment);
  }

  void initGetRequest(String endPoint) async {
    final response = await client.get(Uri.parse(apiHost + endPoint),headers: requestHeaders);
    if(response.statusCode == HttpStatus.ok){
      onSuccess(jsonDecode(response.body));
    }else{
      onSuccess(jsonDecode(response.body));
    }
  }

   onSuccess(dynamic result);
   onError(dynamic error);
}