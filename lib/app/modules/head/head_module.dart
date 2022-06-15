import 'package:bunnie/app/modules/head/submodules/explore/explore_module.dart';
import 'package:bunnie/app/modules/head/submodules/favorite/favorite_module.dart';
import 'package:bunnie/app/modules/head/submodules/home/home_module.dart';
import 'package:bunnie/app/modules/head/submodules/profile/profile_module.dart';

import 'head_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'head_page.dart';

class HeadModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HeadController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (context, args) => const HeadPage(),
      children: [
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/explore', module: ExploreModule()),
        ModuleRoute('/favorite', module: FavoriteModule()),
        ModuleRoute('/profile', module: ProfileModule()),
      ],
    ),
  ];
}
