import 'package:rabbited/app/modules/home/tabs/perfil/perfil_controller.dart';
import 'package:rabbited/app/modules/home/widgets/search_delegate/search_delegate_controller.dart';
import 'package:rabbited/app/modules/home/widgets/anime_card/anime_card_controller.dart';
import 'package:rabbited/app/modules/home/tabs/list/list_controller.dart';
import 'package:rabbited/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PerfilController()),
        Bind((i) => SearchDelegateController()),
        Bind((i) => AnimeCardController()),
        Bind((i) => ListController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
