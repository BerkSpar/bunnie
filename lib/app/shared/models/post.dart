import 'package:rabbited/app/shared/models/user.dart';

class Post {
  int id;
  String content;
  String imageUrl;
  int likes;
  int comments;
  String createdAt;
  String updatedAt;
  User user;

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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['content'] = this.content;
    data['image_url'] = this.imageUrl;
    data['likes'] = this.likes;
    data['comments'] = this.comments;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['user'] = this.user.toJson();
    return data;
  }
}
