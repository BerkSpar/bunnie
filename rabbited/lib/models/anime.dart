class Anime {
  String name;
  bool isWatched;
  String imageUrl;
  String mainColor;

  Anime({this.name, this.isWatched, this.imageUrl, this.mainColor});

  Anime.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    isWatched = json['isWatched'];
    imageUrl = json['imageUrl'];
    mainColor = json['mainColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['isWatched'] = this.isWatched;
    data['imageUrl'] = this.imageUrl;
    data['mainColor'] = this.mainColor;
    return data;
  }
}
