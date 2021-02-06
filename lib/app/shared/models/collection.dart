import 'package:rabbited/app/shared/models/anime.dart';

class Collection {
  int id;
  int userId;
  String imageUrl;
  String name;
  String description;
  bool isPublic;
  String updatedAt;
  String createdAt;
  List<Anime> animes;

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
    animes = new List<Anime>();
    //   json['animes'].forEach((v) {
    //     animes.add(new Anime.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['image_url'] = this.imageUrl;
    data['name'] = this.name;
    data['description'] = this.description;
    data['is_public'] = this.isPublic;
    data['updatedAt'] = this.updatedAt;
    data['createdAt'] = this.createdAt;
    if (this.animes != null) {
      data['animes'] = this.animes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
