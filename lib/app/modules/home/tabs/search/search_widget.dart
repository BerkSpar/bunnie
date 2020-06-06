import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rabbited/app/modules/home/home_controller.dart';
import 'package:rabbited/app/modules/home/widgets/anime_card/anime_card_widget.dart';
import 'package:rabbited/app/shared/models/anime.dart';

class SearchWidget extends StatelessWidget {
  final HomeController controller;

  const SearchWidget({Key key, @required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return ListView.builder(
          itemCount: controller.animesPesquisa.length,
          itemBuilder: (_, index) {
            Anime anime = controller.animesPesquisa[index];

            return AnimeCardWidget(anime: anime);
          },
        );
      },
    );
  }
}
