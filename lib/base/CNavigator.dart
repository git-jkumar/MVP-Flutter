import 'package:flutter/material.dart';
import 'package:sample/photos/photo_widget.dart';
import 'package:sample/login/login_widget.dart';
import 'package:sample/login/model/UserInfo.dart';

class CNavigator {

  static const String LOGIN = 'LOGIN';
  static const String HOME = 'HOME';

  static push(BuildContext context,String screen,UserInfo data) {
    switch (screen) {
      case CNavigator.HOME:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  PhotoWidget(userInfo: data,)),
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

  static pushReplacement(BuildContext context,String screen,UserInfo data) {
    switch (screen) {
      case CNavigator.HOME:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) =>  PhotoWidget(userInfo: data,)),
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