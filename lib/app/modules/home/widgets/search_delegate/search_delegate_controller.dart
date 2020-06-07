import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:rabbited/app/shared/models/anime.dart';
import 'package:rabbited/app/shared/services/dio_service.dart';

part 'search_delegate_controller.g.dart';

class SearchDelegateController = _SearchDelegateControllerBase
    with _$SearchDelegateController;

abstract class _SearchDelegateControllerBase with Store {
  final dio = Modular.get<DioService>();

  @observable
  List<Anime> animesPesquisa = List<Anime>();

  @observable
  User user = User();

  @action
  switchFinished(bool value) {
    user.finished = value;
  }

  @action
  searchAnime(String search) async {
    animesPesquisa = await dio.searchAnime(search);
  }
}
