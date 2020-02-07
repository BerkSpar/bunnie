import 'package:graphql/client.dart';

class Anime {
  int id;
  String name;
  bool isWatched;
  String imageUrl;
  String mainColor;

  Anime({
    this.id,
    this.name = '',
    this.mainColor = '#FFFFF',
    this.imageUrl = '',
    this.isWatched = false,
  });

  Anime.searchAnime(String anime) {
    id = null;
    imageUrl = '';
    mainColor = '#FFFFF';
    name = '';
    isWatched = false;

    queryByName(anime).then((value) {
      QueryResult result = value;

      id = result.data['Media']['id'];
      imageUrl = result.data['Media']['bannerImage'];
      mainColor = result.data['Media']['coverImage']['color'];
      name = result.data['Media']['title']['romaji'];
    });
  }

  Future queryByName(String anime) async {
    final HttpLink _httpLink = HttpLink(
      uri: 'https://graphql.anilist.co',
    );

    final GraphQLClient _client = GraphQLClient(
      cache: InMemoryCache(),
      link: _httpLink,
    );

    const String readRepositories = r'''
  query AnimeSearch($anime: String) {
  Media(search: $anime, type: ANIME) {
    id
    title {
      romaji
    }
    format
    status
    bannerImage
    coverImage {
      color
    }
    trailer {
      id
    }
  }
}
''';

    final QueryOptions options = QueryOptions(
      document: readRepositories,
      variables: <String, dynamic>{
        'anime': anime,
      },
    );

    final QueryResult result = await _client.query(options);

    if (result.hasErrors) {
      print(result.errors.toString());
    }

    if (result.data != null) return result;
  }
}
