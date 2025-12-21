import 'package:pharmacy_app/core/helpers/extension.dart';
import 'package:pharmacy_app/core/networking/api_result.dart';
import 'package:pharmacy_app/core/networking/api_service.dart';
import 'package:pharmacy_app/features/category/data/model/category_response_model.dart';

class CategoryRepo {
  final ApiService _apiService;

  CategoryRepo(this._apiService);

  Future<ApiResult<List<CategoryModel>>> getAllCategories()  {
    return  ApiResultUtils.handleApi(() async {
      final response = await _apiService.getAllCategories();
      return response.data ?? [];
    });
  }
}
