import 'package:flutter/material.dart';

class CTextField {

static TextField getInputBox(String title, bool isPassword,TextEditingController inputController){
    InputDecoration inputDecorator =  InputDecoration(
      border: OutlineInputBorder(),
      labelText: title,
    );
    return TextField(
        obscureText: isPassword,
        controller: inputController,
        decoration: inputDecorator,
        );
}
}