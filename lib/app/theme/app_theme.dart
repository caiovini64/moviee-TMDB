import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/utils/values/constants.dart';

class AppTheme extends GetxController {
  static AppTheme get to => Get.find();

  final Rx<ThemeData> themeData = ThemeData(
    backgroundColor: primaryLightColor,
    primaryColor: primaryLightColor,
    accentColor: accentLightColor,
    buttonColor: secondaryLightColor,
    textTheme: TextTheme(
      headline1: TextStyle(
        color: secondaryLightColor,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(
        color: secondaryLightColor.withOpacity(0.7),
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      button: TextStyle(
        color: secondaryLightColor.withOpacity(0.7),
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    ),
  ).obs;

  get theme => themeData.value;
}
