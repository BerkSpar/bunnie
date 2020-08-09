import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/modules/search/presenter/widgets/search_anime_delegate/search_anime_delegate_controller.dart';

class SearchAnimeDelegateWidget extends SearchDelegate {
  final controller = Modular.get<SearchAnimeDelegateController>();

  Widget _buildResult() {
    controller.searchAnime(query);

    return Observer(
      builder: (context) {
        return ListView.builder(
          itemCount: controller?.animeList?.length ?? 0,
          itemBuilder: (_, index) {
            final anime = controller.animeList[index];

            return Text(anime.title);
          },
        );
      },
    );
  }

  @override
  final String searchFieldLabel = '"Naruto"';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return _buildResult();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return _buildResult();
  }
}
