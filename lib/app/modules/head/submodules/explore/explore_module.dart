import 'explore_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'explore_page.dart';

class ExploreModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $ExploreController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => ExplorePage()),
      ];

  static Inject get to => Inject<ExploreModule>.of();
}
