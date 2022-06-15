import 'package:bunnie/app/modules/head/submodules/favorite/pages/collection/collection_page.dart';
import 'package:bunnie/app/modules/initial/initial_module.dart';
import 'shared/repositories/bunnie_api_repository.dart';
import 'package:bunnie/app/pages/post/post_page.dart';
import 'package:bunnie/app/pages/post/post_controller.dart';
import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'widgets/collection_banner/collection_banner_controller.dart';
import 'widgets/entry_card/entry_card_controller.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => BunnieApiRepository()),
    Bind.lazySingleton((i) => CollectionBannerController()),
    Bind.lazySingleton((i) => PostController()),
    Bind.lazySingleton((i) => AppController()),
    Bind.lazySingleton((i) => EntryCardController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: InitialModule()),
    ChildRoute('/post', child: (_, args) => const PostPage()),
    ChildRoute(
      '/collection/:id',
      child: (_, args) => CollectionPage(id: args.params['id']),
    ),
  ];
}
