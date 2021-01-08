import 'pages/register/register_controller.dart';
import 'pages/register/register_page.dart';
import 'package:rabbited/app/modules/initial/pages/login/login_page.dart';
import 'pages/login/login_controller.dart';
import 'initial_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/modules/head/head_module.dart';

import 'initial_page.dart';

class InitialModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $RegisterController,
        $LoginController,
        $InitialController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => InitialPage()),
        ModularRouter('/login', child: (_, args) => LoginPage()),
        ModularRouter('/register', child: (_, args) => RegisterPage()),
        ModularRouter('/app', module: HeadModule()),
      ];

  static Inject get to => Inject<InitialModule>.of();
}
