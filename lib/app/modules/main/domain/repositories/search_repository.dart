import 'package:dartz/dartz.dart';
import 'package:rabbited/app/modules/main/domain/entities/anime.dart';
import 'package:rabbited/app/modules/main/domain/entities/anime_result.dart';
import 'package:rabbited/app/modules/main/domain/errors/errors.dart';

abstract class SearchRepository {
  Future<Either<FailureSearch, List<AnimeResult>>> search(
    String searchText, {
    int page,
    int limit,
  });

  Future<Either<FailureSearch, Anime>> searchById(int id);
}
