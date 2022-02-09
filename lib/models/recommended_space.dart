import 'dart:convert';

class Recommended {
  int id;
  String name;
  String city;
  String country;
  int price;
  String imageUrl;
  int rating;
  Recommended({
    required this.id,
    required this.name,
    required this.city,
    required this.country,
    required this.price,
    required this.imageUrl,
    required this.rating,
  });

  Recommended copyWith({
    int? id,
    String? name,
    String? city,
    String? country,
    int? price,
    String? imageUrl,
    int? rating,
  }) {
    return Recommended(
      id: id ?? this.id,
      name: name ?? this.name,
      city: city ?? this.city,
      country: country ?? this.country,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      rating: rating ?? this.rating,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'city': city,
      'country': country,
      'price': price,
      'image_url': imageUrl,
      'rating': rating,
    };
  }

  factory Recommended.fromMap(Map<String, dynamic> map) {
    return Recommended(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      city: map['city'] ?? '',
      country: map['country'] ?? '',
      price: map['price']?.toInt() ?? 0,
      imageUrl: map['imageUrl'] ?? '',
      rating: map['rating']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Recommended.fromJson(String source) => Recommended.fromMap(json.decode(source));
}
