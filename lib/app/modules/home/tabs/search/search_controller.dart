import 'package:mobx/mobx.dart';
import 'package:rabbited/app/shared/models/anime.dart';

part 'search_controller.g.dart';

class SearchController = _SearchControllerBase with _$SearchController;

abstract class _SearchControllerBase with Store {
  @observable
  int value = 0;
  List<Anime> animesPesquisa = List<Anime>();

  @action
  void increment() {
    value++;
  }
}
