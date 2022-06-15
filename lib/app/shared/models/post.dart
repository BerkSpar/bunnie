import 'package:bunnie/app/shared/models/user.dart';

class Post {
  int? id;
  String? content;
  String? imageUrl;
  int? likes;
  int? comments;
  String? createdAt;
  String? updatedAt;
  User? user;

  Post({
    this.id,
    this.content,
    this.imageUrl,
    this.likes,
    this.comments,
    this.createdAt,
    this.updatedAt,
    this.user,
  });

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    content = json['content'];
    imageUrl = json['image_url'];
    likes = json['likes'];
    comments = json['comments'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    user = User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['content'] = content;
    data['image_url'] = imageUrl;
    data['likes'] = likes;
    data['comments'] = comments;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['user'] = user?.toJson();
    return data;
  }
}
