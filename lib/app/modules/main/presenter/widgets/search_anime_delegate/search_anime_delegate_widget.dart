import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rabbited/app/modules/main/presenter/widgets/search_anime_delegate/search_anime_delegate_controller.dart';

class SearchAnimeDelegateWidget extends SearchDelegate {
  final controller = Modular.get<SearchAnimeDelegateController>();

  Widget _buildResult() {
    controller.searchAnime(query);

    return Observer(
      builder: (context) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.7,
          ),
          padding: EdgeInsets.all(5),
          itemCount: controller?.animeList?.length ?? 0,
          itemBuilder: (_, index) {
            final anime = controller.animeList[index];

            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/anime/${anime.malId}');
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    ShaderMask(
                      shaderCallback: (rect) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black],
                        ).createShader(Rect.fromLTRB(
                            0, 120, rect.width, rect.height + 20));
                      },
                      blendMode: BlendMode.darken,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(anime.imageUrl),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        anime.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            );
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
