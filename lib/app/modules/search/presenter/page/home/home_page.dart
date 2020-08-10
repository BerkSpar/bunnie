import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/modules/search/presenter/widgets/search_anime_delegate/search_anime_delegate_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rabbited"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: SearchAnimeDelegateWidget(),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Press the button to acess anime full page'),
          onPressed: () {
            Navigator.pushNamed(context, '/anime/${Random().nextInt(300)}');
          },
        ),
      ),
    );
  }
}
