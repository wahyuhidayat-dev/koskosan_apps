import 'dart:convert';

class City {
  int id;
  String name;
  String imageUrl;
  bool ispopular;

  City({
    required this.id,
    required this.name,
    required this.imageUrl,
    this.ispopular = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'ispopular': ispopular,
    };
  }

  factory City.fromMap(Map<String, dynamic> map) {
    return City(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      ispopular: map['ispopular'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory City.fromJson(String source) => City.fromMap(json.decode(source));
}
