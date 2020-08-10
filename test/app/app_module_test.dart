import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rabbited/app/app_module.dart';
import 'package:rabbited/app/modules/search/domain/entities/anime.dart';
import 'package:rabbited/app/modules/search/domain/entities/anime_result.dart';
import 'package:rabbited/app/modules/search/domain/usecases/search_by_id.dart';
import 'package:rabbited/app/modules/search/domain/usecases/search_by_text.dart';

main() {
  SearchByText search;
  SearchById searchById;

  initModule(AppModule());

  setUp(() {
    search = Modular.get<SearchByText>();
    searchById = Modular.get<SearchById>();
  });

  test('Deve recuperar o SearchByText', () {
    expect(search, isA<SearchByText>());
  });

  test('Deve recuperar o SearchById', () {
    expect(searchById, isA<SearchById>());
  });

  test('Deve retornar uma lista de AnimeResult', () async {
    final result = await search('Naruto');
    expect(result | null, isA<List<AnimeResult>>());
  });

  test('Deve retonar um anime', () async {
    final result = await searchById(1);
    expect(result | null, isA<Anime>());
  });

  test('Deve retornar uma lista de AnimeResult com paginação', () async {
    final result = await search('Naruto', page: 2);
    expect(result | null, isA<List<AnimeResult>>());
  });
}
