import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/splash/controller.dart';

class SplashPage extends GetView<SplashController> {
  static const route = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('SplashPage')),
        body: SafeArea(child: Text('SplashController')));
  }
}
