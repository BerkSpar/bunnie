import 'package:dartz/dartz.dart';
import 'package:rabbited/app/modules/search/domain/entities/anime_result.dart';
import 'package:rabbited/app/modules/search/domain/errors/errors.dart';
import 'package:rabbited/app/modules/search/domain/repositories/search_repository.dart';

abstract class SearchByText {
  Future<Either<FailureSearch, List<AnimeResult>>> call(
    String searchText, {
    int page,
  });
}

class SearchByTextImpl implements SearchByText {
  final SearchRepository repository;

  SearchByTextImpl(this.repository);

  @override
  Future<Either<FailureSearch, List<AnimeResult>>> call(
    String searchText, {
    int page,
  }) async {
    if (searchText == null || searchText.isEmpty) {
      return Left(InvalidTextError());
    }

    if (page != null && page <= 0) {
      return Left(InvalidPageError());
    }

    return repository.search(searchText, page: page);
  }
}
