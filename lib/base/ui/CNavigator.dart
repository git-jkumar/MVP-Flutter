import 'package:flutter/material.dart';
import 'package:sample/photos/photo_widget.dart';
import 'package:sample/login/login_widget.dart';
import 'package:sample/home/home_widget.dart';

import '../../activity/activity_widget.dart';

class CNavigator {

  static const String LOGIN  = 'LOGIN';
  static const String HOME   = 'HOME';
  static const String PHOTOS = 'PHOTOS';
  static const String ACTIVITY = 'ACTIVITY';

  static push(BuildContext context,String screen,dynamic data) {
    switch (screen) {
      case CNavigator.PHOTOS:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  PhotoWidget(title: data,)),
        );
        break;
      case CNavigator.ACTIVITY:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  ActivityWidget(title: data,)),
        );
        break;
      case CNavigator.LOGIN:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginWidget()),
        );
        break;
      default:
        return CNavigator.push(context, CNavigator.LOGIN,data);
    }
  }

  static pushReplacement(BuildContext context,String screen,dynamic data) {
    switch (screen) {
      case CNavigator.HOME:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>  HomeWidget()),
        );
        break;

      case CNavigator.LOGIN:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginWidget()),
        );
        break;
      default:
        return CNavigator.pushReplacement(context, CNavigator.LOGIN,data);
    }
  }

}