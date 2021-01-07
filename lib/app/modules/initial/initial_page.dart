import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/utils/bunnie_colors.dart';
import 'initial_controller.dart';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends ModularState<InitialPage, InitialController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 100,
            ),
            Observer(builder: (context) {
              return AnimatedContainer(
                duration: Duration(seconds: 1),
                width: controller.width,
                child: AnimatedOpacity(
                  duration: Duration(seconds: 0),
                  opacity: controller.opacity,
                  child: Text(
                    'Bunnie',
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: 32,
                      color: BunnieColors.main,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
