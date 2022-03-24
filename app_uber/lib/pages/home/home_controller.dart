import 'package:flutter/material.dart';

class HomeController {
  BuildContext context;
  //Aplica la regla NULL SAFETY
  //Se coloca el simbolo de pregunta para evitar el Nulo

  Future init(BuildContext context) {
    this.context = context;
  }

  void goToLoginPage() {
    Navigator.pushNamed(context, 'login');
  }
}

//Utilizando el patrón MVC, BLoC, Provider
//Estos patrones de diseño son los que se pueden usar en Flutter
//Se utiliza MVC por ser uno de los más sencilos y asimilables