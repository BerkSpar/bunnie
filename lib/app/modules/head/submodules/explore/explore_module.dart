import 'explore_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'explore_page.dart';

class ExploreModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ExploreController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const ExplorePage()),
  ];
}
