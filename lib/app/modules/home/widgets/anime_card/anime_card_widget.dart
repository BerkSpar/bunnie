import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rabbited/app/modules/home/widgets/info_text/info_text_widget.dart';
import 'package:rabbited/app/shared/models/anime.dart';

class AnimeCardWidget extends StatelessWidget {
  final Anime anime;

  const AnimeCardWidget({Key key, this.anime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return InkWell(
          onTap: () {},
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  anime.attributes.posterImage.medium,
                  height: 100,
                  width: 75,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        anime.attributes.titles.enJp,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      // InfoText(
                      //   firstText: 'Minha nota: ',
                      //   secondText: anime.user.rating.toString(),
                      // ),
                      // InfoText(
                      //   firstText: 'Eu terminei: ',
                      //   secondText: anime.user.finished ? 'sim' : 'não',
                      // ),
                      // InfoText(
                      //   firstText: 'Estou no episódio: ',
                      //   secondText: anime.user.episode.toString() +
                      //       ' (${anime.attributes.episodeCount - anime.user.episode} para acabar)',
                      // ),
                      InfoText(
                        firstText: 'Status de lançamento: ',
                        secondText: anime.attributes.status == 'finished'
                            ? 'terminado'
                            : 'publicando',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
