import 'package:flutter/material.dart';
import 'package:rabbited/app/shared/models/anime.dart';
import 'package:rabbited/app/widgets/rounded_image/rounded_image.dart';

class AnimeListWidget extends StatelessWidget {
  final Anime anime;

  AnimeListWidget(this.anime);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            RoundedImage(
              imageUrl: anime?.coverImage?.medium ?? '',
              borderRadius: BorderRadius.circular(8),
              height: 80,
              width: 80,
            ),
            SizedBox(width: 16),
            Column(),
          ],
        ),
      ),
    );
  }
}
