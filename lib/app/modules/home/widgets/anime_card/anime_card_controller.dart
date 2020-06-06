import 'package:mobx/mobx.dart';

part 'anime_card_controller.g.dart';

class AnimeCardController = _AnimeCardControllerBase with _$AnimeCardController;

abstract class _AnimeCardControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
