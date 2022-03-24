import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/img/logo_app.png',
                width: 150,
                height: 100,
              ),
              Text('Fácil y Rápido')
            ],
          ),
          SizedBox(height: 50),
          Text('SELECCIONA TU ROL'),
          SizedBox(height: 30),
          CircleAvatar(
            backgroundImage: AssetImage('assets/img/pasajero.png'),
            radius: 50,
            backgroundColor: Colors.black,
          ),
          Text('Cliente'),
          SizedBox(height: 10),
          CircleAvatar(
            backgroundImage: AssetImage('assets/img/driver.png'),
            radius: 50,
            backgroundColor: Colors.black,
          ),
          Text('Conductor'),
        ],
      ),
    )); //Scafold esqueeto de toda la pantalla
  }
}

//Recordar al hacer cambio en pubspec, es necesario ejecutar el comando
//flutter clean y flutter pub get