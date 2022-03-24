import 'package:flutter/material.dart';
import 'package:app_uber/pages/home/home_page.dart';
import 'package:app_uber/pages/login/login_page.dart';

void main() {
  runApp(MyApp());
}

//Clase para darle interacción como StatefulWidget
class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber Clon',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      routes: {
        'home': (BuildContext context) => HomePage(),
        'login': (BuildContext context) => LoginPage(),
      },
    ); //Fin de MaterialApp etiqueta principal
  }
}
