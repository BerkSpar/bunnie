import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rabbited/app/app_module.dart';
import 'package:rabbited/app/modules/search/domain/entities/anime_result.dart';
import 'package:rabbited/app/modules/search/domain/usecases/search_by_text.dart';

main() {
  SearchByText usecase;

  initModule(AppModule());

  setUp(() {
    usecase = Modular.get<SearchByText>();
  });

  test('Deve recuperar o SearchByText', () {
    expect(usecase, isA<SearchByText>());
  });

  test('Deve retornar uma lista de AnimeResult', () async {
    final result = await usecase('Naruto');
    expect(result | null, isA<List<AnimeResult>>());
  });

  test('Deve retornar uma lista de AnimeResult com paginação', () async {
    final result = await usecase('Naruto', page: 2);
    expect(result | null, isA<List<AnimeResult>>());
  });
}
