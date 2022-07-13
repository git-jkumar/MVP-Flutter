import 'package:flutter/material.dart';
import 'package:sample/base/custom_ui/CTextTheme.dart';
import 'package:sample/base/custom_ui/CTextField.dart';
import 'package:sample/base/CNavigator.dart';
import 'package:sample/login/model/UserInfo.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidget();
}

class _LoginWidget extends State<LoginWidget>{
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
        child: const Text('Login',
          style: CTextTheme.title,),
      ),
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: const Text('Sign In',
        style: CTextTheme.subTitle,),
      ),
      Container(
        padding: const EdgeInsets.all(10),
        child: CTextField.getInputBox('User Name',false,nameController),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child:  CTextField.getInputBox('Password',true,passwordController),
      ),
      TextButton(
        onPressed: () {
          //forgot password screen
        },
        child: const Text('Forgot Password',),
      ),
      Container(
          height: 50,
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: ElevatedButton(
            child: const Text('Login'),
            onPressed: () {
              if(nameController.text.isEmpty) {
                Fluttertoast.showToast(msg: "User name can not be empty",);
                return;
              }
              if(passwordController.text.isEmpty) {
                Fluttertoast.showToast(msg: "Password can not be empty",);
                return;
              }
              UserInfo userInfo = UserInfo(nameController.text,passwordController.text);
              CNavigator.pushReplacement(context,CNavigator.HOME,userInfo);
            }
          )
      ),
      Row(
        children: <Widget>[
          const Text('Does not have account?'),
          TextButton(
            child: const Text(
              'Sign up',
              style: TextStyle(fontSize: 10),
            ),
            onPressed: () {
              //signup screen
            },
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    ],))));

  }
}