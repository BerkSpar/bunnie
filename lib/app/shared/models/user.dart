class User {
  int? id;
  String? name;
  String? lastName;
  String? mobile;
  String? username;
  String? profilePhoto;
  String? email;
  String? bio;
  bool? isPublic;
  String? createdAt;
  String? updatedAt;
  String? token;
  String? password;

  User({
    this.id,
    this.name,
    this.lastName,
    this.mobile,
    this.username,
    this.profilePhoto,
    this.email,
    this.bio,
    this.isPublic,
    this.createdAt,
    this.updatedAt,
    this.token,
    this.password,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lastName = json['last_name'];
    mobile = json['mobile'];
    username = json['username'];
    profilePhoto = json['profile_photo'];
    email = json['email'];
    bio = json['bio'];
    isPublic = json['is_public'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['last_name'] = lastName;
    data['mobile'] = mobile;
    data['username'] = username;
    data['profile_photo'] = profilePhoto;
    data['email'] = email;
    data['bio'] = bio;
    data['is_public'] = isPublic;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['token'] = token;

    return data;
  }
}
