import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/app_controller.dart';
import 'package:rabbited/app/modules/home/widgets/anime_card/anime_card_widget.dart';
import 'package:rabbited/app/shared/models/anime.dart';

class ListWidget extends StatelessWidget {
  final app = Modular.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Container(
          color: Theme.of(context).accentColor.withAlpha(150),
          child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            itemCount: app.savedAnimes.length,
            itemBuilder: (_, index) {
              Anime anime = app.savedAnimes[index];

              return AnimeCardWidget(anime: anime);
            },
          ),
        );
      },
    );
  }
}
