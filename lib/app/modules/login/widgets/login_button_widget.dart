import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/home/home_page.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Get.toNamed(HomePage.route),
      child: Container(
        height: Get.height * 0.06,
        width: Get.width * 0.9,
        child: Center(child: Text('Login')),
      ),
    );
  }
}
