import 'package:rabbited/app/modules/search/domain/entities/anime.dart';
import 'package:rabbited/app/modules/search/domain/errors/errors.dart';
import 'package:rabbited/app/modules/search/domain/entities/anime_result.dart';
import 'package:dartz/dartz.dart';
import 'package:rabbited/app/modules/search/domain/repositories/search_repository.dart';
import 'package:rabbited/app/modules/search/infra/datasources/search_datasource.dart';

class SearchRepositoryImpl implements SearchRepository {
  final SearchDatasource searchDatasource;

  SearchRepositoryImpl(this.searchDatasource);

  @override
  Future<Either<FailureSearch, List<AnimeResult>>> search(
    String searchText, {
    int page,
    int limit,
  }) async {
    try {
      final result = await searchDatasource.getSearch(searchText, page: page);

      return Right(result);
    } catch (e) {
      return Left(DataSourceError());
    }
  }

  @override
  Future<Either<FailureSearch, Anime>> searchById(int id) async {
    try {
      final result = await searchDatasource.getSearchById(id);

      return Right(result);
    } catch (e) {
      return Left(DataSourceError());
    }
  }
}
