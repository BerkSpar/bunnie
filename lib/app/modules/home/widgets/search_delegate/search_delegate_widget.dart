import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';
import 'package:rabbited/app/modules/home/widgets/anime_bottom_sheet/anime_bottom_sheet_widget.dart';
import 'package:rabbited/app/modules/home/widgets/card_search/card_search_widget.dart';
import 'package:rabbited/app/modules/home/widgets/search_delegate/search_delegate_controller.dart';
import 'package:rabbited/app/shared/models/anime.dart';

class SearchDelegateWidget extends SearchDelegate<Anime> {
  final controller = Modular.get<SearchDelegateController>();

  @override
  final searchFieldLabel = '"Naruto"';

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

                  showModalBottomSheet(
                      context: context,
                      isDismissible: true,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (_) {
                        return AnimeBottomSheetWidget(anime);
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
