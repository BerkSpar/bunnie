import 'package:rabbited/app/shared/models/anime.dart';

abstract class IApi {
  Future<List<Anime>> searchAnime(String query);
}
