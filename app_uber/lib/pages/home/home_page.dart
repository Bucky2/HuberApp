import 'package:app_uber/pages/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomePage extends StatelessWidget {
  HomeController _con = new HomeController();

  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _con.init(context); //Se inicializa nuestro controlador
    return Scaffold(
        // backgroundColor: Colors.black, //Eliminamos background para hacer un degradado
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: const [Colors.black, Colors.black45]),
        ),
        child: Column(
          children: [
            ClipPath(
              clipper: DiagonalPathClipperTwo(),
              child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/img/logo_app.png',
                      width: 150,
                      height: 100,
                    ),
                    Text(
                      'Fácil y Rápido',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 30,
                          fontFamily: 'Pacifico'),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Text(
              'SELECCIONA TU ROL',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: _con.goToLoginPage,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img/pasajero.png'),
                radius: 50,
                backgroundColor: Colors.grey[600],
              ),
            ),
            Text(
              'Cliente',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: _con.goToLoginPage,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img/driver.png'),
                radius: 50,
                backgroundColor: Colors.grey[600],
              ),
            ),
            Text(
              'Conductor',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    )); //Scafold esqueeto de toda la pantalla
  }
}//fin de la clase HomePage


//Recordar al hacer cambio en pubspec, es necesario ejecutar el comando
//flutter clean y flutter pub get