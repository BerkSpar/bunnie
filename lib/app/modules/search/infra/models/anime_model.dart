import 'package:rabbited/app/modules/search/domain/entities/anime.dart';

class AnimeModel extends Anime {
  AnimeModel.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    url = json['url'];
    imageUrl = json['image_url'];
    trailerUrl = json['trailer_url'];
    title = json['title'];
    titleEnglish = json['title_english'];
    titleJapanese = json['title_japanese'];
    titleSynonyms = json['title_synonyms'].cast<String>();
    type = json['type'];
    source = json['source'];
    episodes = json['episodes'];
    status = json['status'];
    airing = json['airing'];
    aired =
        json['aired'] != null ? new AiredModel.fromJson(json['aired']) : null;
    duration = json['duration'];
    rating = json['rating'];
    score = json['score'];
    scoredBy = json['scored_by'];
    rank = json['rank'];
    popularity = json['popularity'];
    members = json['members'];
    favorites = json['favorites'];
    synopsis = json['synopsis'];
    background = json['background'];
    premiered = json['premiered'];
    broadcast = json['broadcast'];
    related = json['related'] != null
        ? new RelatedModel.fromJson(json['related'])
        : null;
    openingThemes = json['opening_themes'].cast<String>();
    endingThemes = json['ending_themes'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mal_id'] = this.malId;
    data['url'] = this.url;
    data['image_url'] = this.imageUrl;
    data['trailer_url'] = this.trailerUrl;
    data['title'] = this.title;
    data['title_english'] = this.titleEnglish;
    data['title_japanese'] = this.titleJapanese;
    data['title_synonyms'] = this.titleSynonyms;
    data['type'] = this.type;
    data['source'] = this.source;
    data['episodes'] = this.episodes;
    data['status'] = this.status;
    data['airing'] = this.airing;

    data['duration'] = this.duration;
    data['rating'] = this.rating;
    data['score'] = this.score;
    data['scored_by'] = this.scoredBy;
    data['rank'] = this.rank;
    data['popularity'] = this.popularity;
    data['members'] = this.members;
    data['favorites'] = this.favorites;
    data['synopsis'] = this.synopsis;
    data['background'] = this.background;
    data['premiered'] = this.premiered;
    data['broadcast'] = this.broadcast;

    data['opening_themes'] = this.openingThemes;
    data['ending_themes'] = this.endingThemes;
    return data;
  }
}

class AiredModel extends Aired {
  AiredModel.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    prop = json['prop'] != null ? new PropModel.fromJson(json['prop']) : null;
    string = json['string'];
  }
}

class PropModel extends Prop {
  PropModel.fromJson(Map<String, dynamic> json) {
    from = json['from'] != null ? new FromModel.fromJson(json['from']) : null;
    to = json['to'] != null ? new FromModel.fromJson(json['to']) : null;
  }
}

class FromModel extends From {
  FromModel.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    month = json['month'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    data['month'] = this.month;
    data['year'] = this.year;
    return data;
  }
}

class RelatedModel extends Related {
  RelatedModel.fromJson(Map<String, dynamic> json) {
    if (json['Adaptation'] != null) {
      adaptation = new List<Adaptation>();
      json['Adaptation'].forEach((v) {
        adaptation.add(new AdaptationModel.fromJson(v));
      });
    }
  }
}

class AdaptationModel extends Adaptation {
  AdaptationModel.fromJson(Map<String, dynamic> json) {
    malId = json['mal_id'];
    type = json['type'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mal_id'] = this.malId;
    data['type'] = this.type;
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}
