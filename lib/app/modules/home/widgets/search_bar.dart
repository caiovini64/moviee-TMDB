import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, bottom: 30),
      child: Container(
        height: Get.height * 0.07,
        decoration: BoxDecoration(
          color: AppTheme.to.darkTheme.accentColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
