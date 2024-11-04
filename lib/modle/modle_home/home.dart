class Product {
  final String name;
  final String image;
  final double price;
  final bool isBestSeller;

  Product({
    required this.name,
    required this.image,
    required this.price,
    this.isBestSeller = false,
  });
}
