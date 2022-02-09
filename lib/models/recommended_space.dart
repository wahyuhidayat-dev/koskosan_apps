import 'dart:convert';

class Recommended {
  int id;
  String name;
  String city;
  String country;
  int price;
  String image_url;
  int rating;
  Recommended({
    required this.id,
    required this.name,
    required this.city,
    required this.country,
    required this.price,
    required this.image_url,
    required this.rating,
  });

  Recommended copyWith({
    int? id,
    String? name,
    String? city,
    String? country,
    int? price,
    String? image_url,
    int? rating,
  }) {
    return Recommended(
      id: id ?? this.id,
      name: name ?? this.name,
      city: city ?? this.city,
      country: country ?? this.country,
      price: price ?? this.price,
      image_url: image_url ?? this.image_url,
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
      'image_url': image_url,
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
      image_url: map['image_url'] ?? '',
      rating: map['rating']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Recommended.fromJson(String source) => Recommended.fromMap(json.decode(source));
}
