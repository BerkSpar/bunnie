import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:rabbited/app/modules/search/domain/entities/anime_result.dart';
import 'package:rabbited/app/modules/search/domain/errors/errors.dart';
import 'package:rabbited/app/modules/search/domain/repositories/search_repository.dart';
import 'package:rabbited/app/modules/search/domain/usecases/search_by_text.dart';

class SearchRepositoryMock extends Mock implements SearchRepository {}

main() {
  final repository = SearchRepositoryMock();
  final usecase = SearchByTextImpl(repository);

  test('deve retornar uma lista de AnimeResult', () async {
    when(repository.search(any))
        .thenAnswer((_) async => Right(<AnimeResult>[]));

    final result = await usecase("Naruto");
    expect(result | null, isA<List<AnimeResult>>());
  });

  test('deve retornar uma lista de AnimeResult utilizando paginação', () async {
    when(repository.search(any, page: anyNamed('page')))
        .thenAnswer((_) async => Right(<AnimeResult>[]));

    final result = await usecase("Naruto", page: 1);
    expect(result | null, isA<List<AnimeResult>>());
  });

  test('deve retornar um InvalidPageError caso a pagina seja invalida',
      () async {
    when(repository.search(any, page: anyNamed('page')))
        .thenAnswer((_) async => Right(<AnimeResult>[]));

    final result = await usecase("Naruto", page: -1);
    expect(result.fold(id, id), isA<InvalidPageError>());
  });

  test('deve retornar um InvalidTextError caso o texto seja invalido',
      () async {
    when(repository.search(any))
        .thenAnswer((_) async => Right(<AnimeResult>[]));

    var result = await usecase(null);

    expect(result.fold(id, id), isA<InvalidInputError>());

    result = await usecase("");
    expect(result.fold(id, id), isA<InvalidInputError>());
  });
}
