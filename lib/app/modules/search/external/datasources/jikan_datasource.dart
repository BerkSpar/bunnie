import 'package:dio/dio.dart';
import 'package:rabbited/app/modules/search/domain/errors/errors.dart';
import 'package:rabbited/app/modules/search/infra/datasources/search_datasource.dart';
import 'package:rabbited/app/modules/search/infra/models/anime_result_model.dart';

class JikanDatasource implements SearchDatasource {
  final Dio dio;

  JikanDatasource(this.dio);

  @override
  Future<List<AnimeResultModel>> getSearch(String searchText,
      {int page}) async {
    String path = 'http://api.jikan.moe/v3/search/anime?q=$searchText&limit=15';
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
}
