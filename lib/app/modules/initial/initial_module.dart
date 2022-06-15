import 'package:bunnie/app/modules/head/head_module.dart';
import 'pages/register/register_controller.dart';
import 'pages/register/register_page.dart';
import 'package:bunnie/app/modules/initial/pages/login/login_page.dart';
import 'pages/login/login_controller.dart';
import 'initial_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'initial_page.dart';

class InitialModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RegisterController()),
    Bind.lazySingleton((i) => LoginController()),
    Bind.lazySingleton((i) => InitialController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const InitialPage()),
    ModuleRoute('/app', module: HeadModule()),
    ChildRoute('/login', child: (_, args) => const LoginPage()),
    ChildRoute('/register', child: (_, args) => const RegisterPage()),
  ];
}
