import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:rabbited/app/modules/main/domain/entities/anime.dart';
import 'package:rabbited/app/modules/main/domain/entities/anime_result.dart';
import 'package:rabbited/app/modules/main/domain/errors/errors.dart';
import 'package:rabbited/app/modules/main/infra/datasources/search_datasource.dart';
import 'package:rabbited/app/modules/main/infra/models/anime_model.dart';
import 'package:rabbited/app/modules/main/infra/models/anime_result_model.dart';
import 'package:rabbited/app/modules/main/infra/repositories/search_repository_impl.dart';

import '../../utils/jikan_response.dart';

class SearchDatasourceMock extends Mock implements SearchDatasource {}

main() {
  final datasource = SearchDatasourceMock();
  final repository = SearchRepositoryImpl(datasource);

  test('deve retornar uma lista de AnimeResult', () async {
    when(datasource.getSearch(any))
        .thenAnswer((_) async => <AnimeResultModel>[]);

    final result = await repository.search("Naruto");
    expect(result | null, isA<List<AnimeResult>>());
  });

  test('deve retornar um Anime', () async {
    when(datasource.getSearchById(any))
        .thenAnswer((_) async => AnimeModel.fromJson(animeResult));

    final result = await repository.searchById(1);
    expect(result | null, isA<Anime>());
  });

  test('deve retornar um DatasourceError caso dê erro no Datasource', () async {
    when(datasource.getSearch(any)).thenThrow(Exception());
    when(datasource.getSearchById(any)).thenThrow(Exception());

    final search = await repository.search("Naruto");
    expect(search.fold(id, id), isA<DataSourceError>());

    final searchById = await repository.searchById(1);
    expect(searchById.fold(id, id), isA<DataSourceError>());
  });
}
