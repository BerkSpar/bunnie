import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bunnie/app/utils/bunnie_colors.dart';
import 'package:asuka/asuka.dart' as asuka;

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bunnie',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Inter',
        textTheme: const TextTheme(
          headline4: TextStyle(
            fontSize: 32,
            color: BunnieColors.main,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      builder: asuka.builder,
    );
  }
}
