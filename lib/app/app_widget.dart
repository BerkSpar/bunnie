import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/utils/bunnie_colors.dart';
import 'package:asuka/asuka.dart' as asuka;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bunnie',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Inter',
        textTheme: TextTheme(
          headline4: TextStyle(
            fontSize: 32,
            color: BunnieColors.main,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      initialRoute: "/",
      builder: asuka.builder,
    ).modular();
  }
}
