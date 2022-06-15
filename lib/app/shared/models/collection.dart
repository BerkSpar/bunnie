import 'package:bunnie/app/shared/models/anime.dart';

class Collection {
  int? id;
  int? userId;
  String? imageUrl;
  String? name;
  String? description;
  bool? isPublic;
  String? updatedAt;
  String? createdAt;
  List<Anime?>? animes;

  Collection(
      {this.id,
      this.userId,
      this.imageUrl,
      this.name,
      this.description,
      this.isPublic,
      this.updatedAt,
      this.createdAt,
      this.animes});

  Collection.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    imageUrl = json['image_url'];
    name = json['name'];
    description = json['description'];
    isPublic = json['is_public'];
    updatedAt = json['updatedAt'];
    createdAt = json['createdAt'];
    // if (json['animes'] != null) {
    animes = <Anime>[];
    //   json['animes'].forEach((v) {
    //     animes.add(new Anime.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = userId;
    data['image_url'] = imageUrl;
    data['name'] = name;
    data['description'] = description;
    data['is_public'] = isPublic;
    data['updatedAt'] = updatedAt;
    data['createdAt'] = createdAt;
    data['animes'] = animes?.map((v) => v?.toJson()).toList();
    return data;
  }
}
