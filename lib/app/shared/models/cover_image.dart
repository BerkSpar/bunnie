class CoverImage {
  String extraLarge;
  String large;
  String medium;
  String color;

  CoverImage({this.extraLarge, this.large, this.medium, this.color});

  CoverImage.fromJson(Map<String, dynamic> json) {
    extraLarge = json['extraLarge'];
    large = json['large'];
    medium = json['medium'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['extraLarge'] = this.extraLarge;
    data['large'] = this.large;
    data['medium'] = this.medium;
    data['color'] = this.color;
    return data;
  }
}
