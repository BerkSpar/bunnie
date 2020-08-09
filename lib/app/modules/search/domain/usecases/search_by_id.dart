import 'package:dartz/dartz.dart';
import 'package:rabbited/app/modules/search/domain/entities/anime.dart';
import 'package:rabbited/app/modules/search/domain/errors/errors.dart';
import 'package:rabbited/app/modules/search/domain/repositories/search_repository.dart';

abstract class SearchById {
  Future<Either<FailureSearch, Anime>> call(int id);
}

class SearchByIdImpl implements SearchById {
  final SearchRepository repository;

  SearchByIdImpl(this.repository);

  @override
  Future<Either<FailureSearch, Anime>> call(int id) async {
    if (id <= 0) {
      return Left(InvalidInputError());
    }

    return repository.searchById(id);
  }
}
