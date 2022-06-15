import 'package:flutter/material.dart';
import 'package:bunnie/app/shared/models/anime.dart';
import 'package:bunnie/app/widgets/rounded_image/rounded_image.dart';

class AnimeListWidget extends StatelessWidget {
  final Anime anime;

  const AnimeListWidget({Key? key, required this.anime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            RoundedImage(
              imageUrl: anime.coverImage?.medium ?? '',
              borderRadius: BorderRadius.circular(8),
              height: 80,
              width: 80,
            ),
            const SizedBox(width: 16),
            Column(),
          ],
        ),
      ),
    );
  }
}
