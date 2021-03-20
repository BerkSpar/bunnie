class Comment {
  int id;
  int userId;
  int postId;
  String content;
  String createdAt;
  String updatedAt;

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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['post_id'] = this.postId;
    data['content'] = this.content;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
