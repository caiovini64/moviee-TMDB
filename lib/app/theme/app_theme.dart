import 'package:flutter/material.dart';
import 'package:tmdb_api/app/core/constants.dart';

final ThemeData appThemeData = ThemeData(
  backgroundColor: primaryDarkColor,
  primaryColor: primaryDarkColor,
  accentColor: accentDarkColor,
  textTheme: TextTheme(
    headline1: TextStyle(
      color: secondaryDarkColor,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    bodyText1: TextStyle(
      color: secondaryDarkColor.withOpacity(0.7),
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    button: TextStyle(
      color: secondaryDarkColor.withOpacity(0.7),
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
  ),
);
