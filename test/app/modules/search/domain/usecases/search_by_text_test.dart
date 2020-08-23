import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:rabbited/app/modules/main/domain/entities/anime.dart';
import 'package:rabbited/app/modules/main/domain/entities/anime_result.dart';
import 'package:rabbited/app/modules/main/domain/errors/errors.dart';
import 'package:rabbited/app/modules/main/domain/repositories/search_repository.dart';
import 'package:rabbited/app/modules/main/domain/usecases/search_by_id.dart';
import 'package:rabbited/app/modules/main/domain/usecases/search_by_text.dart';

class SearchRepositoryMock extends Mock implements SearchRepository {}

main() {
  final repository = SearchRepositoryMock();
  final searchByText = SearchByTextImpl(repository);
  final searchById = SearchByIdImpl(repository);

  test('deve retornar uma lista de AnimeResult', () async {
    when(repository.search(any))
        .thenAnswer((_) async => Right(<AnimeResult>[]));

    final result = await searchByText("Naruto");
    expect(result | null, isA<List<AnimeResult>>());
  });

  test('deve retornar uma lista de AnimeResult utilizando paginação', () async {
    when(repository.search(any, page: anyNamed('page')))
        .thenAnswer((_) async => Right(<AnimeResult>[]));

    final result = await searchByText("Naruto", page: 1);
    expect(result | null, isA<List<AnimeResult>>());
  });

  test('deve retornar um InvalidPageError caso a pagina seja invalida',
      () async {
    when(repository.search(any, page: anyNamed('page')))
        .thenAnswer((_) async => Right(<AnimeResult>[]));

    final result = await searchByText("Naruto", page: -1);
    expect(result.fold(id, id), isA<InvalidPageError>());
  });

  test('deve retornar um InvalidTextError caso o texto seja invalido',
      () async {
    when(repository.search(any))
        .thenAnswer((_) async => Right(<AnimeResult>[]));

    var result = await searchByText(null);

    expect(result.fold(id, id), isA<InvalidInputError>());

    result = await searchByText("");
    expect(result.fold(id, id), isA<InvalidInputError>());
  });

  test('deve retornar um Anime', () async {
    when(repository.searchById(any)).thenAnswer((_) async => Right(Anime()));

    var result = await searchById(20);
    expect(result | null, isA<Anime>());
  });

  test('deve retornar um InvalidInputError caso pesquise um id inválido',
      () async {
    when(repository.searchById(any)).thenAnswer((_) async => Right(Anime()));

    var result = await searchById(-1);
    expect(result.fold(id, id), isA<InvalidInputError>());
  });
}
