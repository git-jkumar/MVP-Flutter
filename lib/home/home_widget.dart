import 'package:flutter/material.dart';
import 'package:sample/base/custom_ui/CTextTheme.dart';
import 'package:sample/base/CNavigator.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidget();
}

class _HomeWidget extends State<HomeWidget>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
    body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: ListView(
        children: <Widget>[
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: const Text('Home',
          style: CTextTheme.title,),
      ),
      Container(
          height: 80,
          width: 80,
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: ElevatedButton(
            child: const Text('Google Photos'),
            onPressed: () {
              CNavigator.push(context,CNavigator.PHOTOS,CNavigator.PHOTOS);
            }
          )
      ),
          Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                  child: const Text('Activity'),
                  onPressed: () {
                    CNavigator.push(context,CNavigator.ACTIVITY,CNavigator.ACTIVITY);
                  }
              )
          ), Container(
              height: 40,
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                  child: const Text('Logout'),
                  onPressed: () {
                    CNavigator.pushReplacement(context,CNavigator.LOGIN,CNavigator.PHOTOS);
                  }
              )
          )
    ],))));

  }
}