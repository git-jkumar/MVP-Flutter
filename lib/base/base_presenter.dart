import 'dart:convert';
import 'package:http/http.dart' as http;
import 'env_config/env.dart';

class BasePresenter {
  String apiHost = Environment().config.apiHost;
  Map<String, String> requestHeaders = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };
  bool useHttps = Environment().config.useHttps;
  final client = http.Client();

  BasePresenter();

  init(String environment){
    Environment().initConfig(environment);
  }

  dynamic initGetRequest(String endPoint) async {
    final response = await client.get(Uri.parse(apiHost + endPoint),headers: requestHeaders);
    return jsonDecode(response.body);
  }

  // dynamic onSuccess(dynamic result);
  // dynamic onError(dynamic error);
}