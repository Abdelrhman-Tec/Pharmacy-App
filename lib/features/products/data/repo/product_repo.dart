import 'package:pharmacy_app/core/networking/api_result.dart';
import 'package:pharmacy_app/core/networking/api_service.dart';
import 'package:pharmacy_app/features/products/data/model/products_response_model.dart';
import '../../../../core/helpers/extension.dart';

class ProductRepo {
  final ApiService _apiService;

  ProductRepo(this._apiService);

  Future<ApiResult<List<ProductModel>>> getAllProducts() async {
    return await ApiResultUtils.handleApi(() async {
      final response = await _apiService.getAllProducts();
      return response.data ?? [];
    });
  }

  Future<ApiResult<List<ProductModel>>> getProductsByCategory({
    required int id,
  }) async {
    return await ApiResultUtils.handleApi(() async {
      final response = await _apiService.getProductsByCategory(id);
      return response.data ?? [];
    });
  }
}
