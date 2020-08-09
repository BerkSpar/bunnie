import 'package:dio/dio.dart';
import 'package:rabbited/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:rabbited/app/app_widget.dart';
import 'package:rabbited/app/modules/search/domain/usecases/search_by_text.dart';
import 'package:rabbited/app/modules/search/external/datasources/jikan_datasource.dart';
import 'package:rabbited/app/modules/search/infra/repositories/search_repository_impl.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => Dio()),
        Bind((i) => JikanDatasource(i())),
        Bind((i) => SearchByTextImpl(i())),
        Bind((i) => SearchRepositoryImpl(i())),
      ];

  @override
  List<Router> get routers => [];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
