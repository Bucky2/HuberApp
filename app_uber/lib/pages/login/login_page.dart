import 'package:app_uber/pages/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController _con = new LoginController(); //Controlador

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SchedulerBinding.instance.addPersistentFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _bannerApp(),
            _textDescription(),
            _textLogin(),
            _textFieldEmail(),
            _textFieldPassword(),
            _buttonLogin(),
            _textDontHaveAccount()
          ],
        ),
      ),
    );
  }

  Widget _bannerApp() {
    return ClipPath(
      clipper: DiagonalPathClipperTwo(),
      child: Container(
        color: Colors.grey,
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
                  color: Colors.black54, fontSize: 30, fontFamily: 'Pacifico'),
            )
          ],
        ),
      ),
    );
  } //_bannerApp

  Widget _textDescription() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        'Continua con tu',
        style: TextStyle(
          color: Colors.black54,
          fontSize: 24,
        ),
      ),
    );
  } //_textDescription

  Widget _textLogin() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        'Login',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ),
      ),
    );
  }

  Widget _textFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _con.emailController,
        decoration: InputDecoration(
            hintText: 'correo@gmail.com',
            labelText: 'Correo electrónico',
            suffix: Icon(
              Icons.email_outlined,
              color: Colors.black54,
            )),
      ),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: TextField(
        controller: _con.passwordController,
        obscureText: true,
        decoration: InputDecoration(
            labelText: 'Contraseña',
            suffix: Icon(
              Icons.lock_clock_outlined,
              color: Colors.black54,
            )),
      ),
    );
  }

  Widget _buttonLogin() {
    return Container(
      //width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: ElevatedButton(
          onPressed: _con.login,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Iniciar sesión',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CircleAvatar(
                    child: Icon(Icons.arrow_forward_ios),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    radius: 25,
                  ),
                ),
              )
            ],
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black))),
    );
  } //termin _buttonLogin

  Widget _textDontHaveAccount() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      child: Text(
        'No tienes cuenta',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
    );
  }
}
