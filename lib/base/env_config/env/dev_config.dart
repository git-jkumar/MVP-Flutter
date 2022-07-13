import 'package:sample/base/env_config/base_config.dart';

class DevConfig implements BaseConfig {
  String get apiHost => "https://jsonplaceholder.typicode.com";

  bool get reportErrors => false;

  bool get trackEvents => false;

  bool get useHttps => false;
}