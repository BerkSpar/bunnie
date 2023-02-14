class Comment {
  int? id;
  int? userId;
  int? postId;
  String? content;
  String? createdAt;
  String? updatedAt;

  Comment({
    this.id,
    this.userId,
    this.postId,
    this.content,
    this.createdAt,
    this.updatedAt,
  });

  Comment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    postId = json['post_id'];
    content = json['content'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['user_id'] = userId;
    data['post_id'] = postId;
    data['content'] = content;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;

    return data;
  }
}
