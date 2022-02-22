import 'dart:convert';

//import 'package:flutter/foundation.dart';

class Recommended {
  int id;
  String name;
  String city;
  String country;
  int price;
  String image_url;
  int rating;
  String address;
  String phone;
  String map_url;
  List photos;
  int number_of_kitchens;
  int number_of_bedrooms;
  int number_of_cupboards;
  Recommended({
    required this.id,
    required this.name,
    required this.city,
    required this.country,
    required this.price,
    required this.image_url,
    required this.rating,
    required this.address,
    required this.phone,
    required this.map_url,
    required this.photos,
    required this.number_of_kitchens,
    required this.number_of_bedrooms,
    required this.number_of_cupboards,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'city': city,
      'country': country,
      'price': price,
      'image_url': image_url,
      'rating': rating,
      'address': address,
      'phone': phone,
      'map_url': map_url,
      'photos': photos,
      'number_of_kitchens': number_of_kitchens,
      'number_of_bedrooms': number_of_bedrooms,
      'number_of_cupboards': number_of_cupboards,
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
      address: map['address'] ?? '',
      phone: map['phone'] ?? '',
      map_url: map['map_url'] ?? '',
      photos: List.from(map['photos']),
      number_of_kitchens: map['number_of_kitchens']?.toInt() ?? 0,
      number_of_bedrooms: map['number_of_bedrooms']?.toInt() ?? 0,
      number_of_cupboards: map['number_of_cupboards']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Recommended.fromJson(String source) =>
      Recommended.fromMap(json.decode(source));
}
