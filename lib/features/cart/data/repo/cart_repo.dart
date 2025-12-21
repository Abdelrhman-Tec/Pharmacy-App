import 'package:pharmacy_app/core/helpers/extension.dart';
import 'package:pharmacy_app/core/networking/api_result.dart';
import 'package:pharmacy_app/core/networking/api_service.dart';
import 'package:pharmacy_app/features/cart/data/model/cart_request_model.dart';
import 'package:pharmacy_app/features/cart/data/model/cart_response_model.dart';

class CartRepo {
  final ApiService _apiService;

  CartRepo(this._apiService);

  Future<ApiResult<List<CartItem>>> getAllProductsInCart() async {
    return ApiResultUtils.handleApi(() async {
      final response = await _apiService.getAllProductInCart();
      return response.data.items;
    });
  }

  Future<ApiResult<CartResponseModel>> addProductToCart(
    CartRequestModel body,
  ) async {
    return ApiResultUtils.handleApi(() => _apiService.addProductToCart(body));
  }

  Future<ApiResult<CartResponseModel>> removeProductFromCart(
    int cartItemId,
  ) async {
    return ApiResultUtils.handleApi(
      () => _apiService.removeProductInCart(cartItemId),
    );
  }

  Future<ApiResult<CartResponseModel>> updateCartItemQuantity(
    CartUpdateRequestModel body,
  ) async {
    return ApiResultUtils.handleApi(
      () => _apiService.updateQuantityToCart(body),
    );
  }
}
