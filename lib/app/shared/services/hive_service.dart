import 'dart:async';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:rabbited/app/shared/models/anime.dart';

class HiveService extends Disposable {
  Completer<Box> animes = Completer<Box>();

  HiveService() {
    _init();
  }

  _init() async {
    final boxPath = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(boxPath.path);

    final box = Hive.openBox('animes');

    if (!animes.isCompleted) animes.complete(box);
  }

  Future<List<Anime>> getAllAnimes() async {
    final box = await animes.future;
    final List<Anime> result = List<Anime>();

    if (box.values != null) {
      for (Map item in box.values) {
        result.add(Anime.fromJson(item));
      }
    }

    return result;
  }

  deleteAllAnimes() async {
    final box = await animes.future;
    box.clear();
  }

  deleteAnime(int id) async {
    final box = await animes.future;
    box.delete(id);
  }

  insertAnime(Anime anime) async {
    final box = await animes.future;
    box.put(anime.id, anime.toJson());
  }

  Future<Anime> getAnime(int id) async {
    final box = await animes.future;
    return Anime.fromJson(box.get(id));
  }

  @override
  void dispose() {
    Hive.close();
  }
}
