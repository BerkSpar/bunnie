class Anime {
  String name;
  bool isWatched;

  Anime({this.name, this.isWatched});

  Anime.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    isWatched = json['isWatched'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['isWatched'] = this.isWatched;
    return data;
  }
}
