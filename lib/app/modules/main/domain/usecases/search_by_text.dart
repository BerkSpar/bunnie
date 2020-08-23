import 'package:dartz/dartz.dart';
import 'package:rabbited/app/modules/main/domain/entities/anime_result.dart';
import 'package:rabbited/app/modules/main/domain/errors/errors.dart';
import 'package:rabbited/app/modules/main/domain/repositories/search_repository.dart';

abstract class SearchByText {
  Future<Either<FailureSearch, List<AnimeResult>>> call(
    String searchText, {
    int page,
    int limit,
  });
}

class SearchByTextImpl implements SearchByText {
  final SearchRepository repository;

  SearchByTextImpl(this.repository);

  @override
  Future<Either<FailureSearch, List<AnimeResult>>> call(
    String searchText, {
    int page,
    int limit,
  }) async {
    if (searchText == null || searchText.isEmpty) {
      return Left(InvalidInputError());
    }

    if (page != null && page <= 0) {
      return Left(InvalidPageError());
    }

    if (limit != null && limit <= 0) {
      return Left(InvalidPageError());
    }

    return repository.search(searchText, page: page, limit: limit);
  }
}
