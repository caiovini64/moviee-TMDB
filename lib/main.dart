import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/login/login_binding.dart';
import 'package:tmdb_api/app/routes/app_pages.dart';
import 'package:tmdb_api/app/routes/app_routes.dart';
import 'package:tmdb_api/app/translations/app_translation.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.LOGIN,
    defaultTransition: Transition.fade,
    initialBinding: LoginBinding(),
    getPages: AppPages.pages,
    locale: Get.deviceLocale,
    translationsKeys: AppTranslation.translations,
  ));
}
