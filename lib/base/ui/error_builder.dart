import 'package:flutter/material.dart';

class ErrorBuilder{
  var errorBuilder;
  ErrorBuilder(){
    errorBuilder = FutureBuilder<String>(
        builder: (context, snapshot) {
          return const Center(
        child: Text('An error has occurred!'),
      );
    });
  }

  FutureBuilder<String> getErrorBuilder(){
   return errorBuilder;
  }

}