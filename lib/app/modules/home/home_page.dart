import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';
import 'package:rabbited/app/modules/home/tabs/list/list_widget.dart';
import 'package:rabbited/app/modules/home/tabs/search/search_widget.dart';
import 'package:rabbited/app/modules/home/widgets/search_delegate/search_delegate_widget.dart';
import 'package:rabbited/app/shared/const.dart';
import 'package:rabbited/app/shared/models/anime.dart';
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
      SearchWidget(),
    ];

    return Scaffold(
      appBar: AppBar(
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
      floatingActionButton: Observer(
        builder: (context) {
          return FloatingActionButton(
            onPressed: () async {
              if (controller.tabIndex == 0) {
                Anime anime = await showSearch(
                  context: context,
                  delegate: SearchDelegateWidget(),
                );

                if (anime != null) {
                  anime.user = User();
                  setState(() {
                    app.insertAnime(anime);
                  });
                }
              }
            },
            child: controller.fabIcons[controller.tabIndex],
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
