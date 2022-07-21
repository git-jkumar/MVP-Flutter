import 'package:flutter/material.dart';

class LoadingBuilder{
  var loadingBuilder;
  LoadingBuilder(){
    loadingBuilder = FutureBuilder(
      builder: (context, snapshot) {
          return const Center(
            child: CircularProgressIndicator(),
          );
      },
    );
  }

  FutureBuilder getLoadingBuilder(){
   return loadingBuilder;
  }

}