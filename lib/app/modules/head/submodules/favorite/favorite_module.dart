import 'pages/collection/collection_controller.dart';
import 'favorite_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'favorite_page.dart';

class FavoriteModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CollectionController()),
    Bind.lazySingleton((i) => FavoriteController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const FavoritePage()),
  ];
}
