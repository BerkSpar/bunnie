import 'package:rabbited/app/modules/head/submodules/favorite/pages/collection/collection_page.dart';
import 'shared/repositories/bunnie_api_repository.dart';
import 'package:rabbited/app/modules/initial/initial_module.dart';
import 'package:rabbited/app/pages/post/post_page.dart';
import 'package:rabbited/app/pages/post/post_controller.dart';
import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'widgets/collection_banner/collection_banner_controller.dart';
import 'widgets/entry_card/entry_card_controller.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => BunnieApiRepository()),
        Bind((i) => CollectionBannerController()),
        Bind((i) => PostController()),
        Bind((i) => AppController()),
        Bind((i) => EntryCardController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: InitialModule()),
        ChildRoute('/post', child: (_, args) => PostPage()),
        ChildRoute(
          '/collection/:id',
          child: (_, args) => CollectionPage(args.params['id']),
        ),
      ];
}
