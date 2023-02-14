import 'package:bunnie/app/shared/models/cover_image.dart';

class Anime {
  String? name;
  String? bannerImage;
  int? episodes;
  CoverImage? coverImage;
  String? malId;
  int? order;
  String? note;

  Anime({
    this.malId,
    this.order,
    this.note,
    this.name,
    this.coverImage,
    this.episodes,
    this.bannerImage,
  });

  Anime.fromJson(Map<String, dynamic> json) {
    name = json['title'];
    bannerImage = json['bannerImage'];
    episodes = json['episodes'];
    malId = json['mal_id'];
    order = json['order'];
    note = json['note'];
    if (json['coverImage'] != null) {
      coverImage = CoverImage.fromJson(json['coverImage']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['title'] = name;
    data['bannerImage'] = bannerImage;
    data['episodes'] = episodes;
    data['mal_id'] = malId;
    data['order'] = order;
    data['note'] = note;
    data['coverImage'] = coverImage?.toJson();

    return data;
  }
}
