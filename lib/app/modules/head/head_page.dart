import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:bunnie/app/utils/bunnie_app_bar.dart';
import 'head_controller.dart';

class HeadPage extends StatefulWidget {
  const HeadPage({Key? key}) : super(key: key);

  @override
  _HeadPageState createState() => _HeadPageState();
}

class _HeadPageState extends State<HeadPage> {
  final controller = Modular.get<HeadController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Observer(builder: (_) {
        return const RouterOutlet();
      }),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.index,
        onTap: controller.switchPage,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        items: const [
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
