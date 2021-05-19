import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/usuario_model.dart';

import 'controllers/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  static const route = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: 'Login'),
                controller: controller.emailController,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Senha'),
                controller: controller.senhaController,
              ),
              TextButton(
                child: Text('Entrar'),
                onPressed: () => controller.logar(
                  UsuarioModel(
                    id: '2',
                    email: controller.emailController.text,
                    senha: controller.senhaController.text,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
