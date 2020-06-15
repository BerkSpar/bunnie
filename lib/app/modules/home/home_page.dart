import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/modules/home/tabs/list/list_widget.dart';
import 'package:rabbited/app/modules/home/tabs/perfil/perfil_widget.dart';
import 'package:rabbited/app/modules/home/widgets/search_delegate/search_delegate_widget.dart';
import 'package:rabbited/app/shared/const.dart';
import '../../app_controller.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final controller = Modular.get<HomeController>();
  final app = Modular.get<AppController>();

  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
      ListWidget(),
      PerfilWidget(),
    ];

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: SearchDelegateWidget());
            },
          ),
        ],
        title: Text(
          app_name,
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Observer(
        builder: (context) {
          return tabs[controller.tabIndex];
        },
      ),
      bottomNavigationBar: Observer(
        builder: (context) {
          return BottomNavigationBar(
            onTap: controller.switchTab,
            currentIndex: controller.tabIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.format_list_bulleted),
                title: Text('Animes'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Perfil'),
              ),
            ],
          );
        },
      ),
    );
  }
}
