import 'base_config.dart';

class StagingConfig implements BaseConfig {
  String get apiHost => "https://jsonplaceholder.typicode.com";

  bool get reportErrors => true;

  bool get trackEvents => false;

  bool get useHttps => true;
}