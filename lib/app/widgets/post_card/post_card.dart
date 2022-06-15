import 'package:flutter/material.dart';
import 'package:bunnie/app/shared/models/post.dart';
import 'package:bunnie/app/widgets/rounded_image/rounded_image.dart';
import 'package:bunnie/app/widgets/user_header/user_header.dart';

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard({Key? key, required this.post}) : super(key: key);

  Widget _image() {
    return Column(
      children: [
        const SizedBox(height: 8),
        RoundedImage(
          borderRadius: BorderRadius.circular(8),
          imageUrl: post.imageUrl ?? '',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            if (post.user != null)
              UserHeader(
                user: post.user!,
              ),
            const SizedBox(height: 16),
            Text(post.content ?? ''),
            _image(),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(Icons.favorite_border),
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(Icons.comment_outlined),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.share_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
