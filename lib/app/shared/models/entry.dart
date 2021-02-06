import 'package:rabbited/app/shared/models/anime.dart';

class Entry {
  Anime anime;
  int currentEpisode;
  int rating;
  bool public;
  DateTime startedDate;
  DateTime finishedDate;
  String note;

  double get progress => currentEpisode / anime.episodes;

  Entry({
    this.anime,
    this.currentEpisode,
    this.rating,
    this.public,
    this.startedDate,
    this.finishedDate,
    this.note,
  });
}
