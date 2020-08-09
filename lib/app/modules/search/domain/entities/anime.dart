class Anime {
  int malId;
  String url;
  String imageUrl;
  String trailerUrl;
  String title;
  String titleEnglish;
  String titleJapanese;
  List<String> titleSynonyms;
  String type;
  String source;
  int episodes;
  String status;
  bool airing;
  Aired aired;
  String duration;
  String rating;
  double score;
  int scoredBy;
  int rank;
  int popularity;
  int members;
  int favorites;
  String synopsis;
  String background;
  String premiered;
  String broadcast;
  Related related;
  List<String> openingThemes;
  List<String> endingThemes;

  Anime(
      {this.malId,
      this.url,
      this.imageUrl,
      this.trailerUrl,
      this.title,
      this.titleEnglish,
      this.titleJapanese,
      this.titleSynonyms,
      this.type,
      this.source,
      this.episodes,
      this.status,
      this.airing,
      this.aired,
      this.duration,
      this.rating,
      this.score,
      this.scoredBy,
      this.rank,
      this.popularity,
      this.members,
      this.favorites,
      this.synopsis,
      this.background,
      this.premiered,
      this.broadcast,
      this.related,
      this.openingThemes,
      this.endingThemes});
}

class Aired {
  String from;
  String to;
  Prop prop;
  String string;

  Aired({this.from, this.to, this.prop, this.string});
}

class Prop {
  From from;
  From to;

  Prop({this.from, this.to});
}

class From {
  int day;
  int month;
  int year;

  From({this.day, this.month, this.year});
}

class Related {
  List<Adaptation> adaptation;

  Related({this.adaptation});
}

class Adaptation {
  int malId;
  String type;
  String name;
  String url;

  Adaptation({this.malId, this.type, this.name, this.url});
}
