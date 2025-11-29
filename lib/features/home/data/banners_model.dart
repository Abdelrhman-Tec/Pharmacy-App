class BannersModel {
  final String image;

  BannersModel({required this.image});

  static List<BannersModel> banners = [
    BannersModel(image: 'assets/banners/banner1.jpg'),
    BannersModel(image: 'assets/banners/banner2.jpg'),
    BannersModel(image: 'assets/banners/banner3.jpg'),
  ];
}
