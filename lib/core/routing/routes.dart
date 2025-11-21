/// Application route names as constants
class AppRoutes {
  // Private constructor to prevent instantiation
  AppRoutes._();

  // ==================== Auth Routes ====================
  static const String login = '/login';
  static const String signup = '/signup';
  static const String resetPassword = '/reset-password';

  // ==================== Main Routes ====================
  static const String home = '/';
  static const String main = '/main';

  // ==================== Products Routes ====================
  static const String products = '/products';
  static const String productDetail = '/product/:id';
  static const String productDetailWithId = '/product';
  static const String categories = '/categories';

  // ==================== Cart Routes ====================
  static const String cart = '/cart';
  static const String checkout = '/checkout';

  // ==================== Orders Routes ====================
  static const String orders = '/orders';
  static const String orderDetail = '/order/:id';
  static const String orderDetailWithId = '/order';

  // ==================== User/Profile Routes ====================
  static const String profile = '/profile';
  static const String editProfile = '/profile/edit';
  static const String addresses = '/addresses';
  static const String addAddress = '/addresses/add';
  static const String editAddress = '/addresses/edit/:id';
  static const String editAddressWithId = '/addresses/edit';

  // ==================== Settings Routes ====================
  static const String settings = '/settings';
  static const String notifications = '/notifications';
  static const String about = '/about';
  static const String help = '/help';

  // ==================== Helper Methods ====================

  /// Generate product detail route with ID
  static String productDetailRoute(String productId) {
    return '$productDetailWithId/$productId';
  }

  /// Generate order detail route with ID
  static String orderDetailRoute(String orderId) {
    return '$orderDetailWithId/$orderId';
  }

  /// Generate edit address route with ID
  static String editAddressRoute(String addressId) {
    return '$editAddressWithId/$addressId';
  }
}
