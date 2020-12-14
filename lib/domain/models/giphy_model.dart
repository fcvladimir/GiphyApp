class Giphy {
  String url;

  Giphy({this.url});

  factory Giphy.fromJson(Map<String, dynamic> json) {
    return Giphy(url: json["url"]);
  }
}
