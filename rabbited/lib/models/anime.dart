import 'package:graphql/client.dart';

class Anime {
  int id;
  String name = '';
  bool isWatched = false;
  String imageUrl = '';
  String mainColor = '#FFFFF';
  String type = '';
  String format = '';
  String trailerID = '';

  Anime({
    this.id,
    this.name,
    this.mainColor,
    this.imageUrl,
    this.isWatched,
    this.format,
    this.trailerID,
    this.type,
  });

  Anime.searchAnime(String anime) {
    queryByName(anime).then((value) {
      QueryResult result = value;

      id = result.data['Media']['id'];
      imageUrl = result.data['Media']['coverImage']['large'];
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
  Media(search: $anime) {
    id
    title {
      romaji
    }
    type
    format
    status
    bannerImage
    coverImage {
      large
      color
    }
    trailer {
      id
      site
    }
    externalLinks {
      site
      url
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
