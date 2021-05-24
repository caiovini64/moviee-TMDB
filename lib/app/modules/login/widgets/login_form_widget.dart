import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/login/controllers/login_controller.dart';
import 'package:tmdb_api/app/global/widgets/input_widget.dart';

class LoginForm extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    //TODO: Implementar validações
    return Column(
      children: [
        InputLogin(
          hintText: 'Email',
          controller: controller.emailController,
        ),
        SizedBox(height: 30),
        InputLogin(
          hintText: 'Password'.tr,
          controller: controller.passwordController,
        ),
        SizedBox(height: 50),
        ElevatedButton(
          onPressed: () => controller.login(),
          child: Container(
            height: Get.height * 0.06,
            width: Get.width * 0.9,
            child: Center(child: Text('Login')),
          ),
        ),
      ],
    );
  }
}
