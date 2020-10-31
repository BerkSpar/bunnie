import 'package:flutter/material.dart';
import 'package:rabbited/app/shared/models/anime.dart';
import 'package:rabbited/app/utils/bunnie_colors.dart';
import 'package:rabbited/app/widgets/button/button_widget.dart';

class AnimeListTile extends StatelessWidget {
  final Anime anime;

  AnimeListTile({
    @required this.anime,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ImageWidget(anime: anime),
        Column(
          children: [
            Text(
              anime.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: BunnieColors.brown,
              ),
            ),
          ],
        ),
        ButtonWidget(
          onTap: () {},
          iconData: Icons.bookmark_border,
        ),
      ],
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    @required this.anime,
  });

  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(anime.imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(9.26),
      ),
    );
  }
}
