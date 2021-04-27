import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class SearchBar extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.07,
      decoration: BoxDecoration(
        color: AppTheme.to.darkTheme.accentColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
