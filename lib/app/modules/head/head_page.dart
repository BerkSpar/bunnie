import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/utils/bunnie_app_bar.dart';
import 'head_controller.dart';

class HeadPage extends StatefulWidget {
  @override
  _HeadPageState createState() => _HeadPageState();
}

class _HeadPageState extends ModularState<HeadPage, HeadController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Observer(builder: (_) {
        return RouterOutlet();
      }),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: store.index,
        onTap: store.switchPage,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
