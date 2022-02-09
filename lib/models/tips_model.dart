import 'dart:convert';

class Tips {
  int id;
  String title;
  String imageUrl;
  String createdAt;
  Tips({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'createdAt': createdAt,
    };
  }

  factory Tips.fromMap(Map<String, dynamic> map) {
    return Tips(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      createdAt: map['createdAt'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Tips.fromJson(String source) => Tips.fromMap(json.decode(source));
}
