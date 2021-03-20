import 'pages/register/register_controller.dart';
import 'pages/register/register_page.dart';
import 'package:rabbited/app/modules/initial/pages/login/login_page.dart';
import 'pages/login/login_controller.dart';
import 'initial_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/modules/head/head_module.dart';

import 'initial_page.dart';

class InitialModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => RegisterController()),
        Bind((i) => LoginController()),
        Bind((i) => InitialController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, args) => InitialPage()),
        ChildRoute('/login', child: (_, args) => LoginPage()),
        ChildRoute('/register', child: (_, args) => RegisterPage()),
        ModuleRoute('/app', module: HeadModule()),
      ];
}
