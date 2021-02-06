import 'package:rabbited/app/shared/models/cover_image.dart';

class Anime {
  String title;
  String bannerImage;
  int episodes;
  CoverImage coverImage;

  String malId;
  int order;
  String note;

  Anime({
    this.malId,
    this.order,
    this.note,
    this.title,
    this.coverImage,
    this.episodes,
    this.bannerImage,
  });

  Anime.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    bannerImage = json['bannerImage'];
    episodes = json['episodes'];
    malId = json['mal_id'];
    order = json['order'];
    note = json['note'];
    coverImage = CoverImage.fromJson(json['coverImage']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['bannerImage'] = this.bannerImage;
    data['episodes'] = this.episodes;
    data['mal_id'] = this.malId;
    data['order'] = this.order;
    data['note'] = this.note;
    data['coverImage'] = this.coverImage.toJson();
    return data;
  }
}
