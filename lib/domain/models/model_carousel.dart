class Carousel {
  final int id;
  final String name;
  final String image;

  const Carousel({
    required this.id,
    required this.name,
    required this.image,
  });

  factory Carousel.fromJson(Map<String, dynamic> json) => Carousel(
        id: json['id'],
        name: json['name'],
        image: json['image'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
      };

  Carousel copy() => Carousel(
        id: id,
        name: name,
        image: image,
      );
}
