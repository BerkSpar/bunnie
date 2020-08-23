import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:rabbited/app/modules/main/domain/errors/errors.dart';
import 'package:rabbited/app/modules/main/external/datasources/jikan_datasource.dart';
import '../../utils/jikan_response.dart';

class DioMock extends Mock implements Dio {}

main() {
  final dio = DioMock();
  final datasource = JikanDatasource(dio);

  test('deve retonar uma lista de AnimeResult', () async {
    when(dio.get(any)).thenAnswer(
        (_) async => Response(data: animeSearchResult, statusCode: 200));

    final result = datasource.getSearch("Naruto");
    expect(result, completes);
  });

  test('deve retonar um Anime', () async {
    when(dio.get(any))
        .thenAnswer((_) async => Response(data: animeResult, statusCode: 200));

    final result = datasource.getSearchById(1);
    expect(result, completes);
  });

  test('deve retonar um DataSourceError se o código não for 200', () async {
    when(dio.get(any))
        .thenAnswer((_) async => Response(data: null, statusCode: 400));

    final search = datasource.getSearch("Naruto");
    expect(search, throwsA(isA<DataSourceError>()));

    final searchById = datasource.getSearchById(1);
    expect(searchById, throwsA(isA<DataSourceError>()));
  });
}
