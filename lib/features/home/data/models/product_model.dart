class ProductModel {
  final String title;
  final String imagePath;
  final String quantity;
  final String price;

  ProductModel({
    required this.title,
    required this.imagePath,
    required this.quantity,
    required this.price,
  });

  static List<ProductModel> products = [
    ProductModel(
      title: 'بنادول أكسترا',
      imagePath: 'assets/products_image/الادوية.png',
      quantity: '30 قرص',
      price: '100 ر.س',
    ),
    ProductModel(
      title: 'بنادول أكسترا',
      imagePath: 'assets/products_image/الادوية.png',
      quantity: '30 قرص',
      price: '100 ر.س',
    ),
    ProductModel(
      title: 'بنادول أكسترا',
      imagePath: 'assets/products_image/الادوية.png',
      quantity: '30 قرص',
      price: '100 ر.س',
    ),
    ProductModel(
      title: 'بنادول أكسترا',
      imagePath: 'assets/products_image/الادوية.png',
      quantity: '30 قرص',
      price: '100 ر.س',
    ),
  ];
}
