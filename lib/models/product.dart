class Product {
  final String id;
  final String name;
  final String description;
  final DateTime timestamp;
  final double price;
  final String image;
  int orders;

  Product(
      {required this.id,
      required this.name,
      required this.description,
      required this.timestamp,
      required this.price,
      required this.image,
      required this.orders
    });
}
