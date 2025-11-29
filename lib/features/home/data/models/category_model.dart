class CategoryModel {
  final String title;
  final String image;

  CategoryModel(this.title, this.image);

  static List<CategoryModel> categories = [
    CategoryModel('الادوية', 'assets/products_image/الادوية.png'),
    CategoryModel(
      'العناية اليومية',
      'assets/products_image/العناية_اليومية.png',
    ),
    CategoryModel(
      'العناية بالبشرة',
      'assets/products_image/العناية_بالبشرة.png',
    ),
    CategoryModel('العناية بالشعر', 'assets/products_image/العناية_بالشعر.png'),
    CategoryModel(
      'الفيتامينات والمكملات',
      'assets/products_image/الفيتامينات_والمكملات.png',
    ),
    CategoryModel(
      'المكياج والاكسسورات',
      'assets/products_image/المكياج_والاكسسورات.png',
    ),
  ];
}
