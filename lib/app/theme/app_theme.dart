import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/utils/values/constants.dart';

class AppTheme extends GetxController {
  static AppTheme get to => Get.find();

  final Rx<ThemeData> themeData = ThemeData(
    backgroundColor: primaryDarkColor,
    primaryColor: primaryDarkColor,
    accentColor: accentDarkColor,
    buttonColor: secondaryDarkColor,
    textTheme: TextTheme(
      headline1: TextStyle(
        color: secondaryDarkColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        color: secondaryDarkColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(
        color: secondaryDarkColor.withOpacity(0.5),
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      button: TextStyle(
        color: secondaryDarkColor.withOpacity(0.7),
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
    ),
  ).obs;

  ThemeData get theme => themeData.value;
}
//
