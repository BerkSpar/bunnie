import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/shared/models/anime.dart';
import 'package:rabbited/app/shared/models/entry.dart';
import 'package:rabbited/app/widgets/entry_card/entry_card.dart';
import 'favorite_controller.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState
    extends ModularState<FavoritePage, FavoriteController> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 32),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'My Animes',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        SizedBox(height: 8),
        ListView.separated(
          separatorBuilder: (_, index) {
            return SizedBox(height: 8);
          },
          itemCount: 7,
          padding: EdgeInsets.symmetric(horizontal: 16),
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder: (_, index) {
            final entry = Entry(
              anime: Anime(
                title: 'Tokyo Ghoul',
                coverImage: CoverImage(
                  medium:
                      'https://s4.anilist.co/file/anilistcdn/media/manga/cover/small/nx63327-VpmcwQGbXZh5.jpg',
                ),
                episodes: 12,
              ),
              currentEpisode: 4,
            );

            return EntryCard(
              entry: entry,
            );
          },
        ),
      ],
    );
  }
}
