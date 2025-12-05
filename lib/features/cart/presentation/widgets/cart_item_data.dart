class CartItemData {
  final String name;
  final String description;
  final String price;
  final int quantity;
  final String image;
  final String? id;
  final String? category;

  const CartItemData({
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
    required this.image,
    this.id,
    this.category,
  });

  double get numericPrice => double.tryParse(price) ?? 0.0;

  double calculateSubtotal(int quantity) => numericPrice * quantity;
}

