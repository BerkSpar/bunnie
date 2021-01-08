import 'head_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'head_page.dart';

class HeadModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $HeadController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HeadPage()),
      ];

  static Inject get to => Inject<MainModule>.of();
}
