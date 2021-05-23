import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';
import 'package:tmdb_api/app/utils/shared/widgets/logo_text_widget.dart';

import 'controllers/login_controller.dart';
import 'widgets/input_login_widget.dart';
import 'widgets/login_button_widget.dart';

class LoginPage extends GetView<LoginController> {
  static const route = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.to.theme.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            child: Column(
              children: [
                //TODO: Pesquisar formas melhores de por espaçamento entre widgets
                SizedBox(height: 100),
                LogoText(fontSize: 30),
                SizedBox(height: 100),
                InputLogin(hintText: 'Email'),
                SizedBox(height: 30),
                InputLogin(hintText: 'Password'.tr),
                SizedBox(height: 50),
                LoginButton(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Forgot password?'),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: AppTheme.to.theme.buttonColor),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Create account'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
