import 'package:rabbited/app/modules/initial/pages/login/login_page.dart';

import 'pages/login/login_controller.dart';
import 'initial_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'initial_page.dart';

class InitialModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $LoginController,
        $InitialController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => InitialPage()),
        ModularRouter('/login', child: (_, args) => LoginPage()),
      ];

  static Inject get to => Inject<InitialModule>.of();
}
