class Anime {
  String title;
  String bannerImage;
  int episodes;
  CoverImage coverImage;

  Anime({
    this.title,
    this.coverImage,
    this.episodes,
    this.bannerImage,
  });
}

class CoverImage {
  String extraLarge;
  String large;
  String medium;
  String color;

  CoverImage({
    this.extraLarge,
    this.large,
    this.medium,
    this.color,
  });
}
