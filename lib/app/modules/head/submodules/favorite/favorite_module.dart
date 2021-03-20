import 'pages/collection/collection_controller.dart';
import 'favorite_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'favorite_page.dart';

class FavoriteModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => CollectionController()),
        Bind((i) => FavoriteController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute, child: (_, args) => FavoritePage()),
      ];
}
