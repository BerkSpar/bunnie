import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:rabbited/app/modules/search/domain/entities/anime.dart';
import 'package:rabbited/app/modules/search/domain/usecases/search_by_id.dart';

part 'anime_controller.g.dart';

class AnimeController = _AnimeControllerBase with _$AnimeController;

abstract class _AnimeControllerBase with Store {
  final _searchById = Modular.get<SearchById>();

  @observable
  Anime _anime;

  @computed
  Anime get anime {
    return _anime;
  }

  @action
  getAnime(int animeId) async {
    _anime = (await _searchById(animeId)).getOrElse(() => null);
  }
}
