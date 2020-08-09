import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:rabbited/app/modules/search/domain/entities/anime_result.dart';
import 'package:rabbited/app/modules/search/domain/errors/errors.dart';
import 'package:rabbited/app/modules/search/infra/datasources/search_datasource.dart';
import 'package:rabbited/app/modules/search/infra/models/anime_result_model.dart';
import 'package:rabbited/app/modules/search/infra/repositories/search_repository_impl.dart';

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

  test('deve retornar um DatasourceError caso dê erro no Datasource', () async {
    when(datasource.getSearch(any)).thenThrow(Exception());

    final result = await repository.search("Naruto");
    expect(result.fold(id, id), isA<DataSourceError>());
  });
}
