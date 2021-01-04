import 'package:rabbited/app/shared/models/anime.dart';
import 'package:rabbited/app/shared/models/status.dart';

class Entry {
  Status status;
  Anime anime;
  int currentEpisode;
  int rating;
  bool public;
  DateTime startedDate;
  DateTime finishedDate;
  String note;

  double get progress => currentEpisode / anime.episodes;

  Entry({
    this.status,
    this.anime,
    this.currentEpisode,
    this.rating,
    this.public,
    this.startedDate,
    this.finishedDate,
    this.note,
  });
}
