import 'package:flutter/material.dart';
import 'package:rabbited/app/modules/home/widgets/anime_card/anime_card_widget.dart';
import 'package:rabbited/app/shared/const.dart';
import 'package:rabbited/app/shared/models/anime.dart';

class ListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor.withAlpha(150),
      child: ListView.builder(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 5,
        ),
        itemCount: 1,
        itemBuilder: (_, index) {
          Anime anime = Anime.fromJson(naruto_json);

          return AnimeCardWidget(
            anime: anime,
          );
        },
      ),
    );
  }
}
