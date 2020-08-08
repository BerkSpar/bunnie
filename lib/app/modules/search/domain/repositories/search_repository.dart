import 'package:dartz/dartz.dart';
import 'package:rabbited/app/modules/search/domain/entities/anime_result.dart';
import 'package:rabbited/app/modules/search/domain/errors/errors.dart';

abstract class SearchRepository {
  Future<Either<FailureSearch, List<AnimeResult>>> search(
    String searchText, {
    int page,
  });
}
