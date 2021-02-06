import 'package:rabbited/app/modules/head/submodules/favorite/pages/collection/collection_page.dart';

import 'pages/collection/collection_controller.dart';
import 'favorite_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'favorite_page.dart';

class FavoriteModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $CollectionController,
        $FavoriteController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => FavoritePage()),
      ];

  static Inject get to => Inject<FavoriteModule>.of();
}
