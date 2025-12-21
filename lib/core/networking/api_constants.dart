class ApiConstants {
  static const String ipAddress = '10.0.2.2';
  static const String baseUrl = 'http://$ipAddress/pharmcy_api/';

  //-------------------------Authentication Endpoints-------------------------//
  static const String login = 'auth/login';
  static const String register = 'auth/register';

  //-------------------------Categories Endpoints-------------------------//
  static const String categories = 'categories';

  //-------------------------Products Endpoints-------------------------//
  static const String products = 'products';
  static const String productsByCategory = 'categories/{id}/products';

  //-------------------------Cart Endpoints-------------------------//
  static const String allProductsInCart = 'cart';
  static const String addProductToCart = 'cart/add';
  static const String removeProductInCart = 'cart/remove/{id}';
  static const String updateQuantityCart = 'cart/update';
}

//-------------------------Errors-------------------------//
class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
