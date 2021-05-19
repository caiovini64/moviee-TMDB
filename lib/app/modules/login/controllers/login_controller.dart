import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tmdb_api/app/data/models/usuario_model.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> globalFormKey = new GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  String validate(value) {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return 'true';
    } else {
      return 'false';
    }
  }

  final FirebaseAuth auth = FirebaseAuth.instance;

  logar(UsuarioModel usuario) async {
    try {
      final UserCredential result = await auth.signInWithEmailAndPassword(
        email: usuario.email,
        password: usuario.senha,
      );
      usuario.id = result.user!.uid;
      print(result);
    } catch (error) {
      return error;
    }
  }
}
