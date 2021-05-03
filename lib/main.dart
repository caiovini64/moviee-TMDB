import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/splash/binding.dart';
import 'package:tmdb_api/app/routes/app_pages.dart';
import 'package:tmdb_api/app/routes/app_routes.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    defaultTransition: Transition.fade,
    initialBinding: SplashBinding(),
    getPages: AppPages.pages,
  ));
}
