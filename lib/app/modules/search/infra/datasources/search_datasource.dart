import 'package:rabbited/app/modules/search/infra/models/anime_result_model.dart';

abstract class SearchDatasource {
  Future<List<AnimeResultModel>> getSearch(
    String searchText, {
    int page,
    int limit,
  });
}
