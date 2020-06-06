import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:rabbited/app/shared/models/anime.dart';
import 'package:rabbited/app/shared/services/dio_service.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final dio = Modular.get<DioService>();

  @observable
  List<Icon> fabIcons = [
    Icon(Icons.add),
    Icon(Icons.search),
  ];

  @observable
  int tabIndex = 0;

  @action
  switchTab(int value) {
    tabIndex = value;
  }

  @observable
  List<Anime> animesPesquisa = List<Anime>();

  @action
  searchAnime(String search) async {
    animesPesquisa = await dio.searchAnime(search);
  }
}
