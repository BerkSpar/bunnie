import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/modules/explore/explore_module.dart';
import 'package:rabbited/app/modules/favorite/favorite_module.dart';
import 'package:rabbited/app/modules/home/home_module.dart';
import 'package:rabbited/app/modules/profile/profile_module.dart';

import 'app_controller.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Bunnie',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Inter',
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final controller = Modular.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bunnie'),
      ),
      body: PageView(
        controller: controller.pageController,
        children: [
          RouterOutlet(module: HomeModule()),
          RouterOutlet(module: ExploreModule()),
          RouterOutlet(module: FavoriteModule()),
          RouterOutlet(module: ProfileModule()),
        ],
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
          }),
    );
  }
}
