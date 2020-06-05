class Anime {
  String id;
  String type;
  Attributes attributes;

  Anime({this.id, this.type, this.attributes});

  Anime.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    if (this.attributes != null) {
      data['attributes'] = this.attributes.toJson();
    }
    return data;
  }
}

class Attributes {
  String createdAt;
  String updatedAt;
  String slug;
  String synopsis;
  int coverImageTopOffset;
  Titles titles;
  String canonicalTitle;
  List<String> abbreviatedTitles;
  String averageRating;
  int userCount;
  int favoritesCount;
  String startDate;
  String endDate;
  String nextRelease;
  int popularityRank;
  int ratingRank;
  String ageRating;
  String ageRatingGuide;
  String subtype;
  String status;
  String tba;
  PosterImage posterImage;
  CoverImage coverImage;
  int episodeCount;
  int episodeLength;
  int totalLength;
  String youtubeVideoId;
  String showType;
  bool nsfw;

  Attributes(
      {this.createdAt,
      this.updatedAt,
      this.slug,
      this.synopsis,
      this.coverImageTopOffset,
      this.titles,
      this.canonicalTitle,
      this.abbreviatedTitles,
      this.averageRating,
      this.userCount,
      this.favoritesCount,
      this.startDate,
      this.endDate,
      this.nextRelease,
      this.popularityRank,
      this.ratingRank,
      this.ageRating,
      this.ageRatingGuide,
      this.subtype,
      this.status,
      this.tba,
      this.posterImage,
      this.coverImage,
      this.episodeCount,
      this.episodeLength,
      this.totalLength,
      this.youtubeVideoId,
      this.showType,
      this.nsfw});

  Attributes.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    slug = json['slug'];
    synopsis = json['synopsis'];
    coverImageTopOffset = json['coverImageTopOffset'];
    titles =
        json['titles'] != null ? new Titles.fromJson(json['titles']) : null;
    canonicalTitle = json['canonicalTitle'];
    abbreviatedTitles = json['abbreviatedTitles'].cast<String>();
    averageRating = json['averageRating'];
    userCount = json['userCount'];
    favoritesCount = json['favoritesCount'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    nextRelease = json['nextRelease'];
    popularityRank = json['popularityRank'];
    ratingRank = json['ratingRank'];
    ageRating = json['ageRating'];
    ageRatingGuide = json['ageRatingGuide'];
    subtype = json['subtype'];
    status = json['status'];
    tba = json['tba'];
    posterImage = json['posterImage'] != null
        ? new PosterImage.fromJson(json['posterImage'])
        : null;
    coverImage = json['coverImage'] != null
        ? new CoverImage.fromJson(json['coverImage'])
        : null;
    episodeCount = json['episodeCount'];
    episodeLength = json['episodeLength'];
    totalLength = json['totalLength'];
    youtubeVideoId = json['youtubeVideoId'];
    showType = json['showType'];
    nsfw = json['nsfw'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['slug'] = this.slug;
    data['synopsis'] = this.synopsis;
    data['coverImageTopOffset'] = this.coverImageTopOffset;
    if (this.titles != null) {
      data['titles'] = this.titles.toJson();
    }
    data['canonicalTitle'] = this.canonicalTitle;
    data['abbreviatedTitles'] = this.abbreviatedTitles;
    data['averageRating'] = this.averageRating;
    data['userCount'] = this.userCount;
    data['favoritesCount'] = this.favoritesCount;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['nextRelease'] = this.nextRelease;
    data['popularityRank'] = this.popularityRank;
    data['ratingRank'] = this.ratingRank;
    data['ageRating'] = this.ageRating;
    data['ageRatingGuide'] = this.ageRatingGuide;
    data['subtype'] = this.subtype;
    data['status'] = this.status;
    data['tba'] = this.tba;
    if (this.posterImage != null) {
      data['posterImage'] = this.posterImage.toJson();
    }
    if (this.coverImage != null) {
      data['coverImage'] = this.coverImage.toJson();
    }
    data['episodeCount'] = this.episodeCount;
    data['episodeLength'] = this.episodeLength;
    data['totalLength'] = this.totalLength;
    data['youtubeVideoId'] = this.youtubeVideoId;
    data['showType'] = this.showType;
    data['nsfw'] = this.nsfw;
    return data;
  }
}

class Titles {
  String en;
  String enJp;
  String jaJp;

  Titles({this.en, this.enJp, this.jaJp});

  Titles.fromJson(Map<String, dynamic> json) {
    en = json['en'];
    enJp = json['en_jp'];
    jaJp = json['ja_jp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['en'] = this.en;
    data['en_jp'] = this.enJp;
    data['ja_jp'] = this.jaJp;
    return data;
  }
}

class PosterImage {
  String tiny;
  String small;
  String medium;
  String large;
  String original;

  PosterImage({this.tiny, this.small, this.medium, this.large, this.original});

  PosterImage.fromJson(Map<String, dynamic> json) {
    tiny = json['tiny'];
    small = json['small'];
    medium = json['medium'];
    large = json['large'];
    original = json['original'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tiny'] = this.tiny;
    data['small'] = this.small;
    data['medium'] = this.medium;
    data['large'] = this.large;
    data['original'] = this.original;
    return data;
  }
}

class CoverImage {
  String tiny;
  String small;
  String large;
  String original;

  CoverImage({this.tiny, this.small, this.large, this.original});

  CoverImage.fromJson(Map<String, dynamic> json) {
    tiny = json['tiny'];
    small = json['small'];
    large = json['large'];
    original = json['original'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tiny'] = this.tiny;
    data['small'] = this.small;
    data['large'] = this.large;
    data['original'] = this.original;
    return data;
  }
}
