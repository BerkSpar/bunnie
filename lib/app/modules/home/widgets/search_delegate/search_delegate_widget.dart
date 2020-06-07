import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';
import 'package:rabbited/app/modules/home/widgets/card_search/card_search_widget.dart';
import 'package:rabbited/app/modules/home/widgets/search_delegate/search_delegate_controller.dart';
import 'package:rabbited/app/shared/models/anime.dart';

class SearchDelegateWidget extends SearchDelegate<Anime> {
  final controller = Modular.get<SearchDelegateController>();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
          controller.animesPesquisa.clear();
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        controller.animesPesquisa.clear();
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    controller.searchAnime(query);

    return Observer(
      builder: (context) {
        if (controller.animesPesquisa == null) {
          return Center(child: Text('Nada encontrado'));
        } else if (controller.animesPesquisa.length == 0) {
          return Center(child: Lottie.asset('assets/lotties/carrot.json'));
        } else {
          return GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: controller.animesPesquisa.length,
            itemBuilder: (_, index) {
              final anime = controller.animesPesquisa[index];

              return CardSearchWidget(
                anime: anime,
                onTap: () async {
                  controller.user = User();

                  await showModalBottomSheet(
                      context: context,
                      isDismissible: true,
                      builder: (_) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              anime.attributes.titles.enJp,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Image.network(anime.attributes.posterImage.original,
                                height: 200, loadingBuilder:
                                    (context, child, loadingProgress) {
                              return Lottie.asset(
                                'assets/lotties/bunny.json',
                                height: 200,
                              );
                            }),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                FlatButton(
                                  child: Text('cancelar'),
                                  onPressed: () => Navigator.pop(context),
                                ),
                                RaisedButton(
                                  color: Theme.of(context).accentColor,
                                  child: Text(
                                    'Adicionar novo anime',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                    controller.animesPesquisa.clear();
                                    close(context, anime);
                                  },
                                ),
                              ],
                            ),
                          ],
                        );
                      });
                },
              );
            },
          );
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
