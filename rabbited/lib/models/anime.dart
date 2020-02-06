import 'package:graphql/client.dart';

class Anime {
  int id;
  String name;
  bool isWatched;
  String imageUrl;
  String mainColor;

  Anime({
    this.id,
    this.name = 'vazio',
    this.isWatched = false,
    this.imageUrl = ' ',
    this.mainColor = '#FFFFFF',
  });

  Future getAnime(String anime) async {
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

    return result.data['Media']['title']['romaji'];
  }
}
