import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:rabbited/app/modules/search/domain/entities/anime_result.dart';
import 'package:rabbited/app/modules/search/domain/usecases/search_by_text.dart';

part 'search_anime_delegate_controller.g.dart';

class SearchAnimeDelegateController = _SearchAnimeDelegateControllerBase
    with _$SearchAnimeDelegateController;

abstract class _SearchAnimeDelegateControllerBase with Store {
  final _search = Modular.get<SearchByText>();

  @observable
  ObservableList<AnimeResult> animeList = <AnimeResult>[].asObservable();

  @action
  searchAnime(String searchText) async {
    if (searchText.isNotEmpty) {
      final result = await _search(searchText);

      animeList = result.getOrElse(() => null).asObservable();
    }
  }
}
