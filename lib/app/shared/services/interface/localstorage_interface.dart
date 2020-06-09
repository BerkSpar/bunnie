import 'package:rabbited/app/shared/models/anime.dart';

abstract class ILocalStorage {
  Future<bool> deleteAllAnimes();
  Future<bool> deleteAnime(int id);
  Future<Anime> insertAnime(Anime anime);
  Future<Anime> getAnime(int id);
  Future<List<Anime>> getAllAnimes();
}
