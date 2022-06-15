import 'package:bunnie/app/shared/models/anime.dart';

class Entry {
  Anime? anime;
  int? id;
  int? userId;
  int? malId;
  String? name;
  int? currentEpisode;
  int? totalEpisodes;
  String? status;
  String? note;
  String? createdAt;
  String? updatedAt;

  double? get progress => (currentEpisode ?? 0) / (totalEpisodes ?? 1);

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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['mal_id'] = malId;
    data['name'] = name;
    data['current_episode'] = currentEpisode;
    data['total_episodes'] = totalEpisodes;
    data['status'] = status;
    data['note'] = note;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    //data['anime'] = ??
    return data;
  }
}
