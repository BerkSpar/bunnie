import 'package:rabbited/app/modules/home/tabs/search/search_controller.dart';
import 'package:rabbited/app/modules/home/tabs/list/list_controller.dart';
import 'package:rabbited/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SearchController()),
        Bind((i) => ListController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
