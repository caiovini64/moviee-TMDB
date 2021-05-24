import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';

class InputLogin extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const InputLogin({
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.07,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10, top: 10, left: 18),
        child: TextFormField(
          style: TextStyle(color: AppTheme.to.theme.buttonColor),
          controller: controller,
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              color: AppTheme.to.theme.buttonColor.withOpacity(0.5),
            ),
          ),
        ),
      ),
    );
  }
}
