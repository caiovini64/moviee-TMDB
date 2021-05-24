import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/modules/login/widgets/login_form_widget.dart';
import 'package:tmdb_api/app/theme/app_theme.dart';
import 'package:tmdb_api/app/utils/shared/widgets/logo_text_widget.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'controllers/login_controller.dart';

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
                LoginForm(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Forgot password?'),
                    ),
                  ],
                ),
                SignInButton(
                  Buttons.Google,
                  text: "Sign up with Google",
                  onPressed: () {},
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
