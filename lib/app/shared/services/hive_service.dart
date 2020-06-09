import 'dart:async';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:rabbited/app/shared/models/anime.dart';
import 'package:rabbited/app/shared/services/interface/localstorage_interface.dart';

class HiveService extends Disposable implements ILocalStorage {
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
    try {
      final box = await animes.future;
      final List<Anime> result = List<Anime>();

      if (box.values != null) {
        for (Map item in box.values) {
          result.add(Anime.fromJson(item));
        }
      }

      return result;
    } catch (e) {
      print('Hive: $e');
      return null;
    }
  }

  Future<bool> deleteAllAnimes() async {
    try {
      final box = await animes.future;
      box.clear();

      return true;
    } catch (e) {
      print('Hive: $e');
      return false;
    }
  }

  Future<bool> deleteAnime(int id) async {
    try {
      final box = await animes.future;
      box.delete(id);

      return true;
    } catch (e) {
      print('Hive: $e');
      return false;
    }
  }

  Future<Anime> insertAnime(Anime anime) async {
    try {
      final box = await animes.future;
      box.put(anime.id, anime.toJson());

      return anime;
    } catch (e) {
      print('Hive: $e');
      return null;
    }
  }

  Future<Anime> getAnime(int id) async {
    try {
      final box = await animes.future;
      return Anime.fromJson(box.get(id));
    } catch (e) {
      print('Hive: $e');
      return null;
    }
  }

  @override
  void dispose() {
    Hive.close();
  }
}
