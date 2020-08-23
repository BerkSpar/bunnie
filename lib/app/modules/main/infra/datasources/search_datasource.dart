import 'package:rabbited/app/modules/main/infra/models/anime_model.dart';
import 'package:rabbited/app/modules/main/infra/models/anime_result_model.dart';

abstract class SearchDatasource {
  Future<List<AnimeResultModel>> getSearch(
    String searchText, {
    int page,
    int limit,
  });

  Future<AnimeModel> getSearchById(int id);
}
