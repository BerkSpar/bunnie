import 'initial_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'initial_page.dart';

class InitialModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $InitialController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => InitialPage()),
      ];

  static Inject get to => Inject<InitialModule>.of();
}
