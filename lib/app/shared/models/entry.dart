import 'package:rabbited/app/shared/models/anime.dart';

class Entry {
  Anime anime;
  int id;
  int userId;
  int malId;
  String name;
  int currentEpisode;
  int totalEpisodes;
  String status;
  String note;
  String createdAt;
  String updatedAt;

  double get progress => currentEpisode / totalEpisodes;

  Entry({
    this.anime,
    this.id,
    this.userId,
    this.malId,
    this.name,
    this.currentEpisode,
    this.totalEpisodes,
    this.status,
    this.note,
    this.createdAt,
    this.updatedAt,
  });

  Entry.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    malId = json['mal_id'];
    name = json['name'];
    currentEpisode = json['current_episode'];
    totalEpisodes = json['total_episodes'];
    status = json['status'];
    note = json['note'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    //anime = ??
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['mal_id'] = this.malId;
    data['name'] = this.name;
    data['current_episode'] = this.currentEpisode;
    data['total_episodes'] = this.totalEpisodes;
    data['status'] = this.status;
    data['note'] = this.note;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    //data['anime'] = ??
    return data;
  }
}
