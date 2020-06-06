import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/modules/home/widgets/card_search/card_search_widget.dart';

import '../../home_controller.dart';

class SearchDelegateWidget extends SearchDelegate {
  final controller = Modular.get<HomeController>();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
          controller.animesPesquisa = null;
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
      ),
      onPressed: () {
        controller.animesPesquisa = null;
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    controller.searchAnime(query);

    return Observer(
      builder: (context) {
        if (controller.animesPesquisa == null) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(child: CircularProgressIndicator()),
            ],
          );
        } else {
          return GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: controller.animesPesquisa.length,
            itemBuilder: (_, index) {
              final anime = controller.animesPesquisa[index];

              return CardSearchWidget(anime);
            },
          );
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    controller.searchAnime(query);

    return Observer(
      builder: (context) {
        if (controller.animesPesquisa != null) {
          return ListView.builder(
            itemCount: controller.animesPesquisa.length,
            itemBuilder: (_, index) {
              final anime = controller.animesPesquisa[index];

              return ListTile(
                title: Text(anime.attributes.titles.enJp),
                onTap: () {
                  query = anime.attributes.titles.enJp;
                  showResults(context);
                },
              );
            },
          );
        } else {
          return Container();
        }
      },
    );
  }
}
