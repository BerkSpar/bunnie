import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:rabbited/app/shared/models/anime.dart';
import 'package:rabbited/app/shared/services/interface/api_interface.dart';

part 'search_delegate_controller.g.dart';

class SearchDelegateController = _SearchDelegateControllerBase
    with _$SearchDelegateController;

abstract class _SearchDelegateControllerBase with Store {
  final IApi api = Modular.get();

  @observable
  ObservableList<Anime> animesPesquisa = <Anime>[].asObservable();

  @observable
  User user = User();

  @action
  switchFinished(bool value) {
    user.finished = value;
  }

  @action
  searchAnime(String search) async {
    final result = await api.searchAnime(search);
    animesPesquisa = result.asObservable();
  }
}
