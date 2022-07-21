import 'package:flutter/material.dart';
import 'package:sample/splash/splash.dart';
import 'base/env/environment.dart';


void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: FirebaseOptions(
  //     apiKey: "XXX", // Your apiKey
  //     appId: "XXX", // Your appId
  //     messagingSenderId: "XXX", // Your messagingSenderId
  //     projectId: "XXX", // Your projectId
  //   )
  // );
  const String environment = String.fromEnvironment(
    'ENVIRONMENT',
    defaultValue: Environment.DEV,
  );

  Environment().initConfig(environment);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: const SplashWidget(),
    );
  }
}


