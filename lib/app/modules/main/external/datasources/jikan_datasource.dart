import 'package:dio/dio.dart';
import 'package:rabbited/app/modules/main/domain/errors/errors.dart';
import 'package:rabbited/app/modules/main/infra/datasources/search_datasource.dart';
import 'package:rabbited/app/modules/main/infra/models/anime_model.dart';
import 'package:rabbited/app/modules/main/infra/models/anime_result_model.dart';

class JikanDatasource implements SearchDatasource {
  final Dio dio;

  JikanDatasource(this.dio);

  @override
  Future<List<AnimeResultModel>> getSearch(
    String searchText, {
    int page,
    int limit = 20,
  }) async {
    String path =
        'http://api.jikan.moe/v3/search/anime?q=$searchText&limit=$limit';
    if (page != null) path += '&page=$page';

    final response = await dio.get(path);

    if (response.statusCode == 200) {
      final list = (response.data['results'] as List)
          .map((e) => AnimeResultModel.fromJson(e))
          .toList();

      return list;
    } else {
      throw DataSourceError();
    }
  }

  @override
  Future<AnimeModel> getSearchById(int id) async {
    String path = 'http://api.jikan.moe/v3/anime/$id';

    final response = await dio.get(path);

    if (response.statusCode == 200) {
      final anime = AnimeModel.fromJson(response.data);

      return anime;
    } else {
      throw DataSourceError();
    }
  }
}
