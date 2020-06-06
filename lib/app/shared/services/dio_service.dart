import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/shared/models/anime.dart';
import 'dart:convert';

class DioService extends Disposable {
  Dio dio;

  DioService(this.dio) {
    dio.options.baseUrl = 'https://kitsu.io/api/edge';
  }

  Future<List<Anime>> searchAnime(String search) async {
    List<Anime> animeList = List<Anime>();
    search = Uri.encodeFull(search);

    try {
      final result = await dio.get(
          '/anime?filter%5Btext%5D=$search&page%5Blimit%1D=1&page%5Boffset%5D=0/json');

      Map decodedMap = json.decode(result.data);

      for (Map item in decodedMap['data']) {
        final Anime anime = Anime.fromJson(item);
        animeList.add(anime);
      }

      return animeList;
    } catch (e) {
      debugPrint('Erro Dio: $e');
      return null;
    }
  }

  @override
  void dispose() {}
}
