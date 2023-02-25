class Music {
  final String name;
  final String image;
  final String desc;

  Music({required this.name, required this.image, required this.desc});

  factory Music.fromJson(dynamic json) {
    return Music(
        name: json['owner']['name'] as String,
        image: json['images'][0][0]['url'] as String,
        desc: json['description'] as String);
  }

  static List<Music> MusicFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Music.fromJson(data);
    }).toList();
  }
}
