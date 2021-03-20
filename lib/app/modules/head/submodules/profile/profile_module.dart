import 'profile_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'profile_page.dart';

class ProfileModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => ProfileController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, args) => ProfilePage()),
      ];
}
