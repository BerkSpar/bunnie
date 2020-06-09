import 'package:dio/dio.dart';
import 'package:rabbited/app/shared/services/dio_service.dart';
import 'package:rabbited/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:rabbited/app/app_widget.dart';
import 'package:rabbited/app/modules/home/home_module.dart';
import 'package:rabbited/app/shared/services/hive_service.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HiveService()),
        Bind((i) => AppController()),
        Bind((i) => DioService(Dio())),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
