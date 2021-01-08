import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/utils/bunnie_colors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
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
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
