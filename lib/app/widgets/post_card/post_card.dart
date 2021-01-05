import 'package:flutter/material.dart';
import 'package:rabbited/app/shared/models/post.dart';
import 'package:rabbited/app/widgets/rounded_image/rounded_image.dart';
import 'package:rabbited/app/widgets/user_header/user_header.dart';

class PostCard extends StatelessWidget {
  final Post post;

  PostCard({this.post});

  Widget _image() {
    if (post.imageUrl == null) {
      return Container();
    }

    return Column(
      children: [
        SizedBox(height: 8),
        RoundedImage(
          borderRadius: BorderRadius.circular(8),
          imageUrl: post.imageUrl,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            UserHeader(
              user: post.user,
            ),
            SizedBox(height: 16),
            Text(post.text),
            _image(),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.favorite_border),
                SizedBox(width: 8),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
