import 'package:dio/dio.dart';
import 'package:pharmacy_app/core/networking/api_constants.dart';
import 'package:pharmacy_app/features/cart/data/model/cart_request_model.dart';
import 'package:pharmacy_app/features/cart/data/model/cart_response_model.dart';
import 'package:pharmacy_app/features/category/data/model/category_response_model.dart';
import 'package:pharmacy_app/features/login/data/model/login_request_body.dart';
import 'package:pharmacy_app/features/login/data/model/login_response_body.dart';
import 'package:pharmacy_app/features/products/data/model/products_response_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../features/sign_up/data/model/register_request_body.dart';
import '../../features/sign_up/data/model/register_response_body.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  //-------------------------Authentication-------------------------//
  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.register)
  Future<RegisterResponseBody> register(
    @Body() RegisterRequestBody registerRequestBody,
  );

  //-------------------------Categories-------------------------//

  @GET(ApiConstants.categories)
  Future<CategoriesResponseModel> getAllCategories();

  //-------------------------Products-------------------------//
  @GET(ApiConstants.products)
  Future<ProductsResponseModel> getAllProducts();

  @GET(ApiConstants.productsByCategory)
  Future<ProductsResponseModel> getProductsByCategory(@Path("id") int id);

  //-------------------------Cart-------------------------//
  @GET(ApiConstants.allProductsInCart)
  Future<CartResponseModel> getAllProductInCart();

  @POST(ApiConstants.addProductToCart)
  Future<CartResponseModel> addProductToCart(
    @Body() CartRequestModel cartRequestBody,
  );

  @DELETE(ApiConstants.removeProductInCart)
  Future<CartResponseModel> removeProductInCart(@Path("id") int id);

  @PUT(ApiConstants.updateQuantityCart)
  Future<CartResponseModel> updateQuantityToCart(
    @Body() CartUpdateRequestModel updateQty,
  );
}
