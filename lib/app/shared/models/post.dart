import 'package:rabbited/app/shared/models/user.dart';

class Post {
  User user;
  String text;
  String imageUrl;

  Post({
    this.user,
    this.text,
    this.imageUrl,
  });
}
