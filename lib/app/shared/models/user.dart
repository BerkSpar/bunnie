class User {
  int id;
  String name;
  String lastName;
  String mobile;
  String username;
  String email;
  String bio;
  String profilePhoto;
  bool isPublic;
  String updatedAt;
  String createdAt;

  User(
      {this.id,
      this.name,
      this.lastName,
      this.mobile,
      this.username,
      this.email,
      this.bio,
      this.profilePhoto,
      this.isPublic,
      this.updatedAt,
      this.createdAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lastName = json['last_name'];
    mobile = json['mobile'];
    username = json['username'];
    email = json['email'];
    bio = json['bio'];
    profilePhoto = json['profile_photo'];
    isPublic = json['is_public'];
    updatedAt = json['updatedAt'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['last_name'] = this.lastName;
    data['mobile'] = this.mobile;
    data['username'] = this.username;
    data['email'] = this.email;
    data['bio'] = this.bio;
    data['profile_photo'] = this.profilePhoto;
    data['is_public'] = this.isPublic;
    data['updatedAt'] = this.updatedAt;
    data['createdAt'] = this.createdAt;
    return data;
  }
}
