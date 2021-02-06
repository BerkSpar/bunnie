import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/utils/bunnie_app_bar.dart';
import 'package:rabbited/app/utils/bunnie_colors.dart';
import 'package:rabbited/app/modules/head/submodules/explore/explore_module.dart';
import 'package:rabbited/app/modules/head/submodules/favorite/favorite_module.dart';
import 'package:rabbited/app/modules/head/submodules/home/home_module.dart';
import 'package:rabbited/app/modules/head/submodules/profile/profile_module.dart';
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
      body: PageView(
        controller: controller.pageController,
        children: [
          RouterOutlet(module: HomeModule()),
          RouterOutlet(module: ExploreModule()),
          RouterOutlet(module: FavoriteModule()),
          RouterOutlet(module: ProfileModule()),
        ],
      ),
      floatingActionButton: Observer(
        builder: (context) {
          if (controller.fabIcon == null) {
            return Container();
          }

          return FloatingActionButton(
            onPressed: controller.fabAction,
            child: controller.fabIcon,
          );
        },
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: controller.pageController,
        builder: (context, snapshot) {
          return BottomNavigationBar(
            currentIndex: controller.page,
            onTap: controller.switchPage,
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
          );
        },
      ),
    );
  }
}
