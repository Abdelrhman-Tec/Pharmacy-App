import 'package:pharmacy_app/core/helpers/extension.dart';
import 'package:pharmacy_app/core/networking/api_result.dart';
import 'package:pharmacy_app/core/networking/api_service.dart';
import 'package:pharmacy_app/features/login/data/model/login_request_body.dart';
import 'package:pharmacy_app/features/login/data/model/login_response_body.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo({required ApiService apiService}) : _apiService = apiService;

  Future<ApiResult<LoginResponseBody>> login(LoginRequestBody body) async {
    return ApiResultUtils.handleApi(() => _apiService.login(body));
  }
}
