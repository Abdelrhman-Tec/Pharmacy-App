import 'package:pharmacy_app/core/helpers/extension.dart';
import 'package:pharmacy_app/core/networking/api_result.dart';
import 'package:pharmacy_app/core/networking/api_service.dart';
import 'package:pharmacy_app/features/sign_up/data/model/register_request_body.dart';
import 'package:pharmacy_app/features/sign_up/data/model/register_response_body.dart';

class RegisterRepo {
  final ApiService _apiService;

  RegisterRepo(this._apiService);

  Future<ApiResult<RegisterResponseBody>> register(
    RegisterRequestBody body,
  ) async {
    return await ApiResultUtils.handleApi(() => _apiService.register(body));
  }
}
