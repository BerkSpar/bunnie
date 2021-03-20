import 'explore_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'explore_page.dart';

class ExploreModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => ExploreController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, args) => ExplorePage()),
      ];
}
