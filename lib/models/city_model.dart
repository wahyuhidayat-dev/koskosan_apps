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
}
