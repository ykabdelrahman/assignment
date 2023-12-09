class Item {
  final String name;
  String? price;
  final String image;

  Item({
    required this.name,
    required this.image,
    this.price,
  });
}
