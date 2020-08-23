import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/shared/utils.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  final image = loginImages[Random().nextInt(loginImages.length)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage(image['path']),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: ListView(
            reverse: true,
            padding: EdgeInsets.all(10),
            children: [
              Container(
                height: 60,
                child: FlatButton(
                  onPressed: () {},
                  color: Colors.white.withOpacity(0.1),
                  child: Text('Cadastrar-se'),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Container(
                height: 60,
                child: RaisedButton(
                  onPressed: () {
                    Modular.to.pushNamed('/home');
                  },
                  child: Text('Entrar'),
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 30)),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bunnie',
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        .apply(color: image['textColor']),
                  ),
                  Text(
                    'A sua lista de animes que salva o seu tempo!',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .apply(color: image['textColor']),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
