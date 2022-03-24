import 'package:flutter/material.dart';

class LoginController {
  BuildContext context;
  //Aplica la regla NULL SAFETY
  //Se coloca el simbolo de pregunta para evitar el Nulo
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  Future init(BuildContext context) {
    this.context = context;
  }

  void login() {
    String email = emailController.text;
    String password = passwordController.text;

    print('Email: $email y pass $password');
  }
}
