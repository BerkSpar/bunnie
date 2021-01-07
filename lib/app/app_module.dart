import 'package:rabbited/app/modules/initial/initial_module.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'widgets/collection_banner/collection_banner_controller.dart';
import 'widgets/entry_card/entry_card_controller.dart';
import 'package:rabbited/app/app_widget.dart';

import 'app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $CollectionBannerController,
        $AppController,
        $EntryCardController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: InitialModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
