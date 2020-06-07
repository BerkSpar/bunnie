import 'package:mobx/mobx.dart';

part 'anime_card_controller.g.dart';

class AnimeCardController = _AnimeCardControllerBase with _$AnimeCardController;

abstract class _AnimeCardControllerBase with Store {
  String getDiferencaEpisodio(int atual, int total) {
    if (atual < total) {
      return '$atual (faltam ${total - atual})';
    } else if (atual == total) {
      return 'terminado';
    } else {
      return 'erro';
    }
  }
}
