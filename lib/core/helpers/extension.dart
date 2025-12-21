
import 'package:pharmacy_app/core/networking/api_error_handler.dart';
import 'package:pharmacy_app/core/networking/api_result.dart';

extension ApiResultUtils on ApiResult {
  static Future<ApiResult<T>> handleApi<T>(Future<T> Function() task) async {
    try {
      final result = await task();
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
